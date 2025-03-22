import 'package:coffee_now/models/google_maps_models/latlong_model/lat_long_model.dart';
import 'package:coffee_now/sources/google_maps_service/google_maps_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'address_lat_long_provider.g.dart';

@riverpod
Future<GeocodeResponse?> fetchLatLong(
  Ref ref,
  String address,
) async {
  final apiService = ref.read(googleMapsServiceProvider);
  try {
    return await apiService.getNavigationPoints(address);
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}
