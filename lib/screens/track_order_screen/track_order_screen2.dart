import 'package:coffee_now/models/active_order/active_order_model.dart';
import 'package:coffee_now/screens/checkout_page/provider/get_shop_info_provider.dart';
import 'package:coffee_now/screens/detail_page/provider/shop_basic_info_provider/shop_basic_info.dart';
import 'package:coffee_now/screens/home_screen/providers/location_provider/location_provider.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/screens/profile_screen/settings_screen/provider/theme_provider.dart';
import 'package:coffee_now/screens/track_order_screen/provider/concrete_track_order.dart';
import 'package:coffee_now/screens/track_order_screen/widgets/courier_section_widget.dart';
import 'package:coffee_now/screens/track_order_screen/widgets/map_marker.dart';
import 'package:coffee_now/screens/track_order_screen/widgets/order_assembly_info.dart';
import 'package:coffee_now/screens/track_order_screen/widgets/track_order_app_bar.dart';
import 'package:coffee_now/screens/transactions_screen/widgets/order_info_widget.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:widget_to_marker/widget_to_marker.dart';

final userMarkerProvider =
    FutureProvider.family<BitmapDescriptor, bool>((ref, isDarkMode) async {
  return await MapMarker(
    imageUrl: 'lib/assets/icons/destination.svg',
    isDarkMode: isDarkMode,
  ).toBitmapDescriptor();
});

final courierMarkerProvider =
    FutureProvider.family<BitmapDescriptor, bool>((ref, isDarkMode) async {
  return await MapMarker(
    imageUrl: 'lib/assets/icons/Delivery_track.svg',
    isDarkMode: isDarkMode,
  ).toBitmapDescriptor();
});

final polylineProvider = FutureProvider.family<List<Polyline>, String>(
  (ref, orderID) async {
    final themeData = ref.watch(themeNotifierProvider);
    final polylinesPoint = PolylinePoints();
    List<LatLng> polylineCoordinates = [];
    List<LatLng> coordinates = [];

    final user = ref.watch(userProvider).value;
    final userLat = user?.addresses.firstOrNull?.lat ?? '';
    final userLng = user?.addresses.firstOrNull?.lng ?? '';
    final trackItem = ref.watch(
      concreteTrackOrderProvider(
        orderID,
      ),
    );

    final trackOrderItems = trackItem?.order_items ?? [];
    final List<String> waypointsList = [];
    final checkInShopIDs = (trackItem?.check_in_coffee_shops ?? [])
        .map((e) => e.coffeeShopID)
        .toSet();
    final groupedItemsByID =
        trackOrderItems.map((item) => item.shopID).toSet().toList();
    if (groupedItemsByID.isNotEmpty && groupedItemsByID.length > 1) {
      for (String shopID in groupedItemsByID) {
        if (!checkInShopIDs.contains(shopID)) {
          final shopLocation =
              ref.watch(fetchLocationConcreteShopProvider(shopID)).value;
          if (shopLocation != null) {
            waypointsList.add('${shopLocation[0]},${shopLocation[1]}');
          }
        }
      }
    }
    final wayPointList = waypointsList.toSet().toList();

    final shopLocation =
        ref.watch(fetchLocationConcreteShopProvider(groupedItemsByID[0])).value;

    if (shopLocation != null && userLat.isNotEmpty && userLng.isNotEmpty) {
      final shopLat = double.parse(shopLocation[0]);
      final shopLng = double.parse(shopLocation[1]);
      final userLatParsed = double.parse(userLat);
      final userLngParsed = double.parse(userLng);

      coordinates.add(LatLng(shopLat, shopLng));

      final groupedItemsByI = groupedItemsByID[0];
      for (final anotherShopID in groupedItemsByID.sublist(1)) {
        if (groupedItemsByID.length > 1) {
          final matchedShopID = checkInShopIDs.firstWhere(
            (shopID) => shopID == anotherShopID,
            orElse: () => '',
          );

          if (matchedShopID.isEmpty) {
            final anotherShopLocation = ref
                .watch(fetchLocationConcreteShopProvider(anotherShopID))
                .value;
            if (anotherShopLocation != null) {
              final anotherShopLat = double.parse(anotherShopLocation[0]);
              final anotherShopLng = double.parse(anotherShopLocation[1]);
              coordinates.add(LatLng(anotherShopLat, anotherShopLng));
            }
          }
        }
      }

      coordinates.add(LatLng(userLatParsed, userLngParsed));

      final result = await polylinesPoint.getRouteBetweenCoordinates(
        googleApiKey: 'AIzaSyBGHhRFdiPJxDxpX81Up_LhS71FQr4nJLY',
        request: PolylineRequest(
          optimizeWaypoints: true,
          origin: trackItem != null &&
                  trackItem.deliveryStatus == DeliveryStatus.inProggress
              ? PointLatLng(
                  trackItem.courier?.lat ?? coordinates.first.latitude,
                  trackItem.courier?.lng ?? coordinates.first.longitude,
                )
              : PointLatLng(
                  coordinates.first.latitude,
                  coordinates.first.longitude,
                ),
          destination: PointLatLng(
            coordinates.last.latitude,
            coordinates.last.longitude,
          ),
          wayPoints: wayPointList.isNotEmpty
              ? wayPointList.map((waypoint) {
                  return PolylineWayPoint(
                    location: waypoint,
                  );
                }).toList()
              : [],
          mode: TravelMode.driving,
        ),
      );

      if (result.status != 'OK' || result.points.isEmpty) {
        return [];
      }

      polylineCoordinates.addAll(
        result.points.map((p) => LatLng(p.latitude, p.longitude)),
      );

      PolylineId id = PolylineId(groupedItemsByI);
      return [
        Polyline(
          polylineId: id,
          color: themeData.name == 'dark'
              ? AppColors.orangeColor
              : AppColors.brownColor,
          points: polylineCoordinates,
          width: 5,
        ),
      ];
    }
    return [];
  },
);

final shopMarkerProvider =
    FutureProvider.family<BitmapDescriptor, bool>((ref, isDarkMode) async {
  return await MapMarker(
    imageUrl: 'lib/assets/icons/Shop.svg',
    isDarkMode: isDarkMode,
  ).toBitmapDescriptor();
});

class TrackOrderScreen2 extends ConsumerWidget {
  final String trackOrderID;
  const TrackOrderScreen2(this.trackOrderID, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final userMarkerAsync = ref.watch(userMarkerProvider(isDarkMode));
    final shopMarkerAsync = ref.watch(shopMarkerProvider(isDarkMode));
    final courierMarkerAsync = ref.watch(courierMarkerProvider(isDarkMode));
    final user = ref.watch(userProvider).value;
    final userLat = user?.addresses.firstOrNull?.lat ?? '';
    final userLng = user?.addresses.firstOrNull?.lng ?? '';

    final trackItem = ref.watch(
      concreteTrackOrderProvider(
        trackOrderID,
      ),
    );

    final trackOrderItems = trackItem?.order_items ?? [];
    final checkInShopIDs = (trackItem?.check_in_coffee_shops ?? [])
        .map((e) => e.coffeeShopID)
        .toSet();

    final groupedItemsByID =
        trackOrderItems.map((item) => item.shopID).toSet().toList();

    final Map<String, List<String>> shopLocationMap = {
      for (String shopID in groupedItemsByID)
        if (!checkInShopIDs.contains(shopID))
          if (ref.watch(fetchLocationConcreteShopProvider(shopID)).value !=
              null)
            shopID:
                (ref.watch(fetchLocationConcreteShopProvider(shopID)).value!)
                    .cast<String>(),
    };

    final firstCoffeeShopInfo = groupedItemsByID.isNotEmpty
        ? ref
                .watch(fetchConcreteCoffeeShopProvider(groupedItemsByID[0]))
                .value ??
            []
        : [];
    String createLocationString(Map<String, List<dynamic>> locationMap) {
      final locationStrings = trackItem?.courier != null &&
              trackItem?.courier?.lat != 0 &&
              trackItem?.courier?.lng != 0 &&
              courierMarkerAsync.hasValue &&
              trackItem?.deliveryStatus == DeliveryStatus.inProggress
          ? locationMap.entries.map(
              (entry) {
                final latLngString =
                    entry.value.map((e) => e.toString()).join(',');
                return latLngString;
              },
            ).toList()
          : locationMap.entries.skip(1).map(
              (entry) {
                final latLngString =
                    entry.value.map((e) => e.toString()).join(',');
                return latLngString;
              },
            ).toList();

      return locationStrings.join('|');
    }

    final locationString = createLocationString(shopLocationMap);
    final firstLocation = shopLocationMap.isNotEmpty
        ? shopLocationMap.entries.first.value
        : ['0.0', '0.0'];
    final firstLat = firstLocation[0].toString();

    final firstLng = firstLocation[1].toString();

    final totalDistanceDelivery = ref.watch(
      fetchDeliveryDistanceProvider(
        trackItem?.courier != null &&
                trackItem?.courier?.lat != 0 &&
                trackItem?.courier?.lng != 0 &&
                courierMarkerAsync.hasValue &&
                trackItem?.deliveryStatus == DeliveryStatus.inProggress
            ? (trackItem?.courier?.lat.toString() ?? '')
            : firstLat,
        trackItem?.courier != null &&
                trackItem?.courier?.lat != 0 &&
                trackItem?.courier?.lng != 0 &&
                courierMarkerAsync.hasValue
            ? (trackItem?.courier?.lng.toString() ?? '')
            : firstLng,
        user?.addresses[0].lat ?? '',
        user?.addresses[0].lng ?? '',
        locationString,
      ),
    );
    final totalDistanceDeliveryValue = totalDistanceDelivery.value ?? '';
    final totalDeliveryTime = ref.watch(
      fetchDeliveryTimeProvider(
        trackItem?.courier != null &&
                trackItem?.courier?.lat != 0 &&
                trackItem?.courier?.lng != 0 &&
                courierMarkerAsync.hasValue &&
                trackItem?.deliveryStatus == DeliveryStatus.inProggress
            ? (trackItem?.courier?.lat.toString() ?? '')
            : firstLat,
        trackItem?.courier != null &&
                trackItem?.courier?.lat != 0 &&
                trackItem?.courier?.lng != 0 &&
                courierMarkerAsync.hasValue
            ? (trackItem?.courier?.lng.toString() ?? '')
            : firstLng,
        user?.addresses[0].lat ?? '',
        user?.addresses[0].lng ?? '',
        locationString,
      ),
    );

    final totalDeliveryTimeValue = totalDeliveryTime.value ?? '';

    final totalDistanceDeliveryValueParsed =
        totalDistanceDeliveryValue.isNotEmpty &&
                double.tryParse(
                      totalDistanceDeliveryValue,
                    ) !=
                    null
            ? double.parse(
                totalDistanceDeliveryValue,
              )
            : 0.0;
    Set<Marker> markers = {};
    final Set<Polyline> polylines = {};

    final polylineAsync = ref.watch(polylineProvider(trackOrderID));

    polylineAsync.whenData((polyline) {
      polylines.addAll(polyline);
    });

    shopLocationMap.forEach((shop, location) {});
    if (userLat.isNotEmpty && userLng.isNotEmpty) {}

    if (userLat.isNotEmpty && userLng.isNotEmpty && userMarkerAsync.hasValue) {
      markers.add(
        Marker(
          markerId: const MarkerId('user'),
          position: LatLng(
            double.parse(userLat),
            double.parse(userLng),
          ),
          icon: userMarkerAsync.value!,
          infoWindow: const InfoWindow(title: 'Ваше розташування'),
        ),
      );
    }

    if (trackItem?.courier != null &&
        trackItem?.courier?.lat != 0 &&
        trackItem?.courier?.lng != 0 &&
        courierMarkerAsync.hasValue) {
      markers.add(
        Marker(
          markerId: const MarkerId('courier'),
          position: LatLng(
            trackItem!.courier!.lat,
            trackItem.courier!.lng,
          ),
          icon: courierMarkerAsync.value!,
          infoWindow: const InfoWindow(title: 'Кур’єр'),
        ),
      );
    }

    shopLocationMap.forEach((shopID, location) {
      if (shopMarkerAsync.hasValue) {
        markers.add(
          Marker(
            markerId: MarkerId(shopID),
            position:
                LatLng(double.parse(location[0]), double.parse(location[1])),
            icon: shopMarkerAsync.value!,
            infoWindow: InfoWindow(title: 'Магазин $shopID'),
          ),
        );
      }
    });

    final shopName = groupedItemsByID.isEmpty
        ? ''
        : (firstCoffeeShopInfo.isNotEmpty
            ? (groupedItemsByID.length > 1
                ? '${firstCoffeeShopInfo.first.shopName} and ${groupedItemsByID.length - 1} more'
                : firstCoffeeShopInfo.first.shopName)
            : '');

    return Scaffold(
      appBar: TrackOrderAppBar(
        shopName: shopName,
        distanceValue: totalDistanceDeliveryValueParsed,
      ),
      body: FutureBuilder(
          future: rootBundle.loadString(
            isDarkMode
                ? 'lib/assets/map_style/dark_mode/dark.json'
                : 'lib/assets/map_style/light_mode/silver.json',
          ),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (userLat.isEmpty || userLng.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Expanded(
                      child: GoogleMap(
                        // onMapCreated: (controller) {
                        //   mapController = controller;
                        // },
                        myLocationButtonEnabled: false,
                        style: snapshot.data,
                        buildingsEnabled: true,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(
                            double.parse(userLat),
                            double.parse(userLng),
                          ),
                          zoom: 13.0,
                        ),
                        markers: markers,
                        polylines: polylines,
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
                      trackItem?.orderAssemblyStatus ==
                              OrderAssemblyStatus.initial
                          ? const OrderAssemblyInfo(
                              text:
                                  'Your order is being sent to the shop for approval',
                            )
                          : const SizedBox.shrink(),
                      trackItem?.orderAssemblyStatus ==
                              OrderAssemblyStatus.inProggress
                          ? const OrderAssemblyInfo(
                              text:
                                  'Your order has been confirmed by the shop and is being prepared',
                            )
                          : const SizedBox.shrink(),
                      trackItem?.orderAssemblyStatus ==
                                  OrderAssemblyStatus.finished &&
                              trackItem?.courier == null &&
                              trackItem?.deliveryMethod ==
                                  DeliveryOrderMethod.delivery
                          ? const OrderAssemblyInfo(
                              text:
                                  'Your order is being prepared. We\'re searching for the courier!',
                            )
                          : const SizedBox.shrink(),
                      trackItem?.orderAssemblyStatus ==
                                  OrderAssemblyStatus.finished &&
                              trackItem?.courier == null &&
                              trackItem?.deliveryMethod ==
                                  DeliveryOrderMethod.selfPickup &&
                              trackItem?.deliveryStatus !=
                                  DeliveryStatus.finished
                          ? const OrderAssemblyInfo(
                              text:
                                  'Your order is ready. We\'re waiting for you to self-pickup the order!',
                            )
                          : const SizedBox.shrink(),
                      trackItem != null &&
                              trackItem.courier != null &&
                              trackItem.deliveryStatus !=
                                  DeliveryStatus.finished &&
                              trackItem.orderAssemblyStatus ==
                                  OrderAssemblyStatus.finished &&
                              trackItem.deliveryMethod ==
                                  DeliveryOrderMethod.delivery
                          ? Column(
                              children: [
                                CourierSectionWidget(trackItem: trackItem),
                                OrderInfoWidget(
                                  deliveryTime: totalDeliveryTimeValue,
                                  orderID: trackItem.id,
                                ),
                              ],
                            )
                          : const SizedBox.shrink(),
                      trackItem != null &&
                              trackItem.deliveryStatus ==
                                  DeliveryStatus.finished &&
                              trackItem.orderAssemblyStatus ==
                                  OrderAssemblyStatus.finished
                          ? const OrderAssemblyInfo(
                              text: 'Tranks for your order!',
                            )
                          : const SizedBox.shrink(),
                      const SizedBox(
                        height: 16.0,
                      ),
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}
