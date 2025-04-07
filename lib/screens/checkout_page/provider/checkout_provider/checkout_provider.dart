import 'package:coffee_now/models/hive_models/basket_hive_item_model/basket_hive_item_model.dart';
import 'package:coffee_now/screens/checkout_page/provider/delivery_method_provider/delivery_method_provider.dart';
import 'package:coffee_now/screens/checkout_page/provider/paymernt_method_provider/payment_method_provider.dart';
import 'package:coffee_now/screens/transactions_screen/provider/transactions_provider/transactions_provider.dart';
import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'checkout_provider.g.dart';

@riverpod
Future<String?> checkout(
  Ref ref,
  List<BasketItemHiveModel> basketListItems,
  String userID,
  DeliveryMethod deliveryMethod,
  PaymentMethod paymentMethod,
  String orderTotal,
  String destinationAddress,
) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    final orderItemsDocIDList =
        await apiService.createOrderItemsFromBasket(basketListItems);
    final documentID = await apiService.createOrderWithOrderItems(
      userID,
      deliveryMethod,
      paymentMethod,
      orderTotal,
      destinationAddress,
      orderItemsDocIDList,
    );
    ref.invalidate(FetchTransactionsProvider(int.parse(userID)));
    return documentID;
  } catch (e) {
    return null;
  }
}
