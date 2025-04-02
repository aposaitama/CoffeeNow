import 'package:coffee_now/models/hive_models/basket_hive_item_model/basket_hive_item_model.dart';
import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'grouped_basket_provider.g.dart';

@riverpod
Future<Map<String, List<BasketItemHiveModel>>> groupProductsByShop(
  Ref ref,
  List<BasketItemHiveModel> basketItems,
) async {
  Map<String, List<BasketItemHiveModel>> groupedItems = {};
  final apiService = ref.read(apiServiceProvider);
  for (var item in basketItems) {
    String? shopID =
        await apiService.fetchCoffeeShopIDByProduct(item.documentId);
    if (shopID != null) {
      groupedItems.putIfAbsent(shopID, () => []).add(item);
    }
  }

  return groupedItems;
}
