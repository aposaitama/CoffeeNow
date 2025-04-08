import 'package:coffee_now/style/colors.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_polylines_provider.g.dart';

@riverpod
Future<Map<PolylineId, Polyline>?> fetchShopsWithDistance(
  Ref ref,
  Map<String, List<String>> shopLocationMap,
  String userLat,
  String userLng,
) async {
  final polylinePoints = PolylinePoints();
  List<LatLng> polylineCoordinates = [];
  Map<PolylineId, Polyline> polylines = {};

  if (shopLocationMap.isEmpty || userLat.isEmpty || userLng.isEmpty) {
    return null;
  }

  final shopLocationLat = shopLocationMap.entries.first.value[0];
  final shopLocationLng = shopLocationMap.entries.first.value[1];

  final result = await polylinePoints.getRouteBetweenCoordinates(
    googleApiKey: 'AIzaSyBGHhRFdiPJxDxpX81Up_LhS71FQr4nJLY',
    request: PolylineRequest(
      origin: PointLatLng(
          double.parse(shopLocationLat), double.parse(shopLocationLng)),
      destination: PointLatLng(double.parse(userLat), double.parse(userLng)),
      mode: TravelMode.driving,
    ),
  );

  if (result.status != 'OK' || result.points.isEmpty) {
    return null;
  }

  polylineCoordinates
      .addAll(result.points.map((p) => LatLng(p.latitude, p.longitude)));

  PolylineId id = const PolylineId("poly");
  polylines[id] = Polyline(
    polylineId: id,
    color: AppColors.orangeColor,
    points: polylineCoordinates,
    width: 5,
  );

  return polylines;
}
