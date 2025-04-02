import 'package:coffee_now/screens/track_order_screen/widgets/map_marker.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:widget_to_marker/widget_to_marker.dart';

final markersProvider = StateProvider<Set<Marker>>((ref) {
  return {};
});

final polylinesProvider = StateProvider<Set<Polyline>>((ref) {
  return {};
});

Future<void> initPolylines(WidgetRef ref, bool isDarkMode) async {
  final Set<Polyline> polylines = ref.watch(polylinesProvider);
  final polyline = Polyline(
    polylineId: PolylineId('route1'),
    points: [
      LatLng(49.44694895603774, 32.055307926186245),
      LatLng(49.4190841, 32.0831215),
    ],
    color: isDarkMode ? AppColors.orangeColor : AppColors.grey50TextColor,
    width: 5,
  );
  polylines.add(polyline);

  ref.read(polylinesProvider.state).state = polylines;
}

Future<void> initMarkers(WidgetRef ref, bool isDarkMode) async {
  final Set<Marker> markers = ref.read(markersProvider.state).state;

  final marker1 = Marker(
    markerId: const MarkerId("1"),
    position: const LatLng(49.44694895603774, 32.055307926186245),
    icon: await MapMarker(
      imageUrl: 'lib/assets/icons/Shop.svg',
      isDarkMode: isDarkMode,
    ).toBitmapDescriptor(),
  );

  final marker2 = Marker(
    markerId: const MarkerId("2"),
    position: const LatLng(49.4190841, 32.0831215),
    icon: await MapMarker(
      imageUrl: 'lib/assets/icons/destination.svg',
      isDarkMode: isDarkMode,
    ).toBitmapDescriptor(),
  );

  markers.add(marker1);
  markers.add(marker2);

  ref.read(markersProvider.state).state = markers;
}
