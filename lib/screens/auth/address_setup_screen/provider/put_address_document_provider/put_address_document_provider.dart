import 'package:coffee_now/models/google_maps_models/latlong_model/lat_long_model.dart';
import 'package:coffee_now/sources/google_maps_service/google_maps_service_provider.dart';
import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'put_address_document_provider.g.dart';

@riverpod
Future<String?> putAddressDoc(Ref ref, String lat, String lng) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    return await apiService.createAddressDocument(lat, lng);
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}

@riverpod
Future<void> connectAddressDoc(Ref ref, String id, String userID) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    return await apiService.connectAddressWithDoc(id, userID);
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}
