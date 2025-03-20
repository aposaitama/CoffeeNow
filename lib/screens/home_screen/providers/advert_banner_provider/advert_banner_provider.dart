import 'package:coffee_now/models/advert_banner/advert_banner_model.dart';
import 'package:coffee_now/sources/api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'advert_banner_provider.g.dart';

@riverpod
Future<List<AdvertBannerModel>> fetchAdvertBanner(Ref ref) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    return await apiService.getAdvertBanned();
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}
