import 'package:coffee_now/sources/api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:coffee_now/models/brand_image/brand_image_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'brand_image_provider.g.dart';

@riverpod
Future<List<BrandImageModel>> fetchBrands(Ref ref) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    return await apiService.getPopularBrands();
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}
