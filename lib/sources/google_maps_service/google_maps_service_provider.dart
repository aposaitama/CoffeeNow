import 'package:coffee_now/sources/google_maps_service/google_maps_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final googleMapsServiceProvider = Provider<GoogleMapsService>((ref) {
  return GoogleMapsService();
});
