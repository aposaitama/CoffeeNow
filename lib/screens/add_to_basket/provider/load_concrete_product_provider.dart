import 'package:coffee_now/models/coffee_shop/coffee_shop_model.dart';
import 'package:coffee_now/models/detailed_coffee_shop/detailed_coffee_shop_model.dart';
import 'package:coffee_now/models/detailed_product/detailed_product_model.dart';
import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'load_concrete_product_provider.g.dart';

@riverpod
Future<DetailedProductModel?> fetchConcreteProduct(
  Ref ref,
  String documentID,
) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    return await apiService.getConcreteProduct(documentID);
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}
