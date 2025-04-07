import 'package:coffee_now/models/coffee_shop/coffee_shop_model.dart';
import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shop_basic_info.g.dart';

@riverpod
Future<List<CoffeeShopModel>> fetchConcreteCoffeeShop(
  Ref ref,
  String coffeeShopID,
) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    final result = await apiService.getConcreteCoffeeShop(coffeeShopID);

    return result;
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}
