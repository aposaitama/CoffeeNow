import 'dart:async';
import 'package:coffee_now/models/active_order/active_order_model.dart';
import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'has_active_order_provider.g.dart';

@riverpod
class HasActiveOrder extends _$HasActiveOrder {
  Timer? _timer;

  @override
  List<ActiveOrderModel> build(String userID) {
    if (userID.isEmpty) return [];
    state = [];
    _fetchActiveOrders(userID);
    _startPolling(userID);

    return state;
  }

  void _startPolling(String userID) {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) async {
      await _fetchActiveOrders(userID);
    });
  }

  Future<void> _fetchActiveOrders(String userID) async {
    final apiService = ref.read(apiServiceProvider);

    try {
      final orderList = await apiService.getActiveOrders(userID);

      state = orderList;
    } catch (e) {
      // Обробка помилки
    }
  }
}
