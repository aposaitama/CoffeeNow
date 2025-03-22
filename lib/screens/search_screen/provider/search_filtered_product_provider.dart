import 'package:coffee_now/models/detailed_coffee_shop/detailed_coffee_shop_model.dart';
import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_filtered_product_provider.g.dart';

@riverpod
Future<List<CoffeeShopProducts?>> fetchFilteredProducts(
    Ref ref, String query) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    return await apiService.getSearchQueryProducts(query);
  } catch (e) {
    throw Exception('Failed to load search history: $e');
  }
}
