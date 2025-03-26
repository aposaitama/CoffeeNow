import 'package:coffee_now/models/detailed_coffee_shop/detailed_coffee_shop_model.dart';
import 'package:coffee_now/models/google_maps_models/location_model/location_model.dart';
import 'package:coffee_now/screens/checkout_page/provider/get_shop_info_provider.dart';
import 'package:coffee_now/sources/google_maps_service/google_maps_service_provider.dart';
import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_provider.g.dart';

@riverpod
Future<LocationResponse?> fetchLocation(Ref ref, String lat, String lng) async {
  final apiService = ref.read(googleMapsServiceProvider);
  try {
    return await apiService.getLocation(lat, lng);
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}

@riverpod
Future<String?> fetchDistance(
  Ref ref,
  String latOrigin,
  String lngOrigin,
  String latShop,
  String lngShop,
) async {
  final apiService = ref.read(googleMapsServiceProvider);
  try {
    return await apiService.getDistance(latOrigin, lngOrigin, latShop, lngShop);
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}

@riverpod
Future<String?> fetchDeliveryDistance(
  Ref ref,
  String latOrigin,
  String lngOrigin,
  String latDestination,
  String lngDestination,
  String waypoints,
) async {
  final apiService = ref.read(googleMapsServiceProvider);

  try {
    return await apiService.getDistanceWithWaypoints(
        latOrigin, lngOrigin, latDestination, lngDestination, waypoints
        // waypoints,
        );
  } catch (e) {
    throw Exception('Failed to load distance: $e');
  }
}
