import 'package:coffee_now/models/coffee_shop/coffee_shop_model.dart';
import 'package:coffee_now/sources/api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'coffee_shop_provider.g.dart';

@riverpod
Future<List<CoffeeShopModel>> fetchCoffeeShop(Ref ref) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    return await apiService.getCoffeeShop();
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}
