import 'package:coffee_now/models/detailed_coffee_shop/detailed_coffee_shop_model.dart';
import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'recomended_items_provider.g.dart';

@riverpod
Future<List<DetailedCoffeeShopModel>> fetchRecomendedItems(Ref ref) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    return await apiService.getRecomendedItems();
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}
