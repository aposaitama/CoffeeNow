import 'dart:async';
import 'package:coffee_now/models/active_order/active_order_model.dart';
import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'concrete_track_order.g.dart';

@riverpod
class ConcreteTrackOrder extends _$ConcreteTrackOrder {
  Timer? _timer;

  @override
  ActiveOrderModel? build(String documentID) {
    if (documentID.isEmpty) return null;
    state = null;
    _fetchActiveOrder();
    _startPolling(documentID);

    return state;
  }

  void _startPolling(String documentID) {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) async {
      await _fetchActiveOrder();
    });
  }

  Future<void> _fetchActiveOrder() async {
    final apiService = ref.read(apiServiceProvider);

    try {
      final orderItem = await apiService.getConcreteActiveOrder(documentID);

      if (state != orderItem) {
        state = orderItem;
      }
    } catch (e) {
      //
    }
  }
}
