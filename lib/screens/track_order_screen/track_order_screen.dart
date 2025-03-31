import 'package:coffee_now/screens/track_order_screen/widgets/map_marker.dart';
import 'package:coffee_now/screens/track_order_screen/widgets/track_order_app_bar.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:widget_to_marker/widget_to_marker.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  late GoogleMapController mapController;
  Set<Marker> markers = {};
  Set<Polyline> polylines = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initMarkers();
      _initPolylines();
    });
  }

  _initPolylines() {
    // Ініціалізація полілінії між двома маркерами
    final polyline = Polyline(
      polylineId: const PolylineId('route1'),
      points: [
        LatLng(49.44694895603774, 32.055307926186245),
        LatLng(49.4190841, 32.0831215),
      ],
      color: Colors.blue,
      width: 5,
    );

    polylines.add(polyline);
    setState(() {});
  }

  _initMarkers() async {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
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

    final LatLngBounds bounds = LatLngBounds(
      southwest: LatLng(
        (marker1.position.latitude < marker2.position.latitude)
            ? marker1.position.latitude
            : marker2.position.latitude,
        (marker1.position.longitude < marker2.position.longitude)
            ? marker1.position.longitude
            : marker2.position.longitude,
      ),
      northeast: LatLng(
        (marker1.position.latitude > marker2.position.latitude)
            ? marker1.position.latitude
            : marker2.position.latitude,
        (marker1.position.longitude > marker2.position.longitude)
            ? marker1.position.longitude
            : marker2.position.longitude,
      ),
    );

    // Animate camera to the center of both markers
    mapController.animateCamera(
      CameraUpdate.newLatLngBounds(
        bounds,
        110,
      ),
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    const latitude = 49.4190841;
    const longitude = 32.0831215;
    const shopName = 'Starbucks - CSB Mall';
    const distanceValue = '2';

    return Scaffold(
      appBar: const TrackOrderAppBar(
        shopName: shopName,
        distanceValue: distanceValue,
      ),
      body: FutureBuilder(
        future: rootBundle.loadString(
          isDarkMode
              ? 'lib/assets/map_style/dark_mode/dark.json'
              : 'lib/assets/map_style/light_mode/silver.json',
        ),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                children: [
                  Expanded(
                    child: GoogleMap(
                      polylines: polylines,
                      onMapCreated: (controller) {
                        mapController = controller;
                      },
                      myLocationButtonEnabled: false,
                      style: snapshot.data,
                      buildingsEnabled: true,
                      initialCameraPosition: const CameraPosition(
                        target: LatLng(latitude, longitude),
                        zoom: 17.0,
                      ),
                      markers: markers,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 30.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Bottom container for courier info
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer
                                .withOpacity(1),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                            offset: const Offset(4.0, 4.0),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14.0,
                          vertical: 19.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    fit: BoxFit.scaleDown,
                                    'lib/assets/icons/fcb1cd556531e09930864a75ab064bc3.png',
                                  ),
                                ),
                                const SizedBox(
                                  width: 14.0,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rifqi Arkaanul',
                                      style: AppFonts.poppinsSemiBold.copyWith(
                                        fontSize: 14.0,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurface,
                                      ),
                                    ),
                                    Text(
                                      'ID - 24457788',
                                      style: AppFonts.poppinsMedium.copyWith(
                                        fontSize: 12.0,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurface,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        'Coffee Courier',
                                        style: AppFonts.poppinsMedium.copyWith(
                                          fontSize: 9.0,
                                          color: AppColors.greyTitleColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 30.0,
                              width: 30.0,
                              decoration: BoxDecoration(
                                  color: AppColors.orangeColor,
                                  borderRadius: BorderRadius.circular(6.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.orangeColor
                                          .withOpacity(0.2),
                                      blurRadius: 4.0,
                                      spreadRadius: 2.0,
                                      offset: const Offset(2.0, 2.0),
                                    ),
                                  ]),
                              child: SvgPicture.asset(
                                fit: BoxFit.scaleDown,
                                'lib/assets/icons/Phone.svg',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    // Order info container
                    Container(
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.tertiary,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24.0,
                          vertical: 16.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order Code : 267890-2',
                                  style: AppFonts.poppinsMedium.copyWith(
                                    fontSize: 12.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    'ArrivedTime : 15 Min',
                                    style: AppFonts.poppinsMedium.copyWith(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 17.0,
                                  vertical: 8.0,
                                ),
                                child: Text(
                                  'View',
                                  style: AppFonts.poppinsSemiBold.copyWith(
                                    fontSize: 12.0,
                                    color: AppColors.brownColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
