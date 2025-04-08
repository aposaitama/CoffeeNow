import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_shop_info_provider.g.dart';

@riverpod
Future<String?> fetchShopID(
  Ref ref,
  String documentID,
) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    return await apiService.fetchCoffeeShopIDByProduct(documentID);
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}

@riverpod
Future<List?> fetchLocationConcreteShop(
  Ref ref,
  String coffeeShopID,
) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    return await apiService.fetchLocationConcreteShop(coffeeShopID);
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}

@riverpod
Future<List<List<String>?>> fetchLocationCoffeeShops(
  Ref ref,
  List<String> shopIDsList,
) async {
  final apiService = ref.read(apiServiceProvider);
  List<List<String>> locations = []; // Список для зберігання локацій

  try {
    if (shopIDsList.isNotEmpty) {
      // Перебираємо кожен shopID з списку
      for (String shopID in shopIDsList) {
        // Отримуємо локацію для поточного shopID
        final location = await apiService.fetchLocationConcreteShop(shopID);

        // Якщо локація не порожня (не null), додаємо її в список
        if (location != null && location[0] != '0' && location[1] != '0') {
          locations.add(location as List<String>);
        }
      }
    }
    return locations;
  } catch (e) {
    throw Exception('Failed to load locations: $e');
  }
}

@riverpod
Future<double?> fetchDeliveryPrice(
  Ref ref,
) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    return await apiService.fetchDeliveryPrice();
  } catch (e) {
    throw Exception('Failed to load deliveryPrice: $e');
  }
}
