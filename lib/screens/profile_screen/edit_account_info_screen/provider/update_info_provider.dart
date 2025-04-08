import 'dart:io';

import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:coffee_now/models/brand_image/brand_image_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_info_provider.g.dart';

@riverpod
Future<void> updateInfo(Ref ref, File image, String userID) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    return await apiService.updateInfo(image, userID);
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}
