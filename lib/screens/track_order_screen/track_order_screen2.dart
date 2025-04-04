import 'package:bot_toast/bot_toast.dart';
import 'package:coffee_now/models/active_order/active_order_model.dart';
import 'package:coffee_now/screens/checkout_page/provider/get_shop_info_provider.dart';
import 'package:coffee_now/screens/checkout_page/provider/grouped_basket_provider/grouped_basket_provider.dart';
import 'package:coffee_now/screens/detail_page/provider/shop_basic_info_provider/shop_basic_info.dart';
import 'package:coffee_now/screens/home_screen/providers/location_provider/location_provider.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/screens/track_order_screen/provider/concrete_track_order.dart';
import 'package:coffee_now/screens/track_order_screen/provider/fetch_polylines_provider.dart';
import 'package:coffee_now/screens/track_order_screen/widgets/map_marker.dart';
import 'package:coffee_now/screens/track_order_screen/widgets/order_assembly_info.dart';
import 'package:coffee_now/screens/track_order_screen/widgets/track_order_app_bar.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_polyline_points/flutter_polyline_points.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
// final polylineProvider = FutureProvider.family<List<Polyline>, String>(
//   (ref, shopID) async {
//     final polylinesPoint = PolylinePoints();
//     List<LatLng> polylineCoordinates = [];
//     final user = ref.watch(userProvider).value;
//     final userLat = user?.addresses.firstOrNull?.lat ?? '';
//     final userLng = user?.addresses.firstOrNull?.lng ?? '';

//     final shopLocation =
//         ref.watch(fetchLocationConcreteShopProvider(shopID)).value;

//     if (shopLocation != null && userLat.isNotEmpty && userLng.isNotEmpty) {
//       final shopLat = double.parse(shopLocation[0]);
//       final shopLng = double.parse(shopLocation[1]);
//       final userLatParsed = double.parse(userLat);
//       final userLngParsed = double.parse(userLng);

//       // Додаємо координати для першого закладу
//       polylineCoordinates.add(LatLng(shopLat, shopLng));

//       // Якщо є більше одного закладу, додаємо ще
//       final groupedItemsByID = [shopID]; // Ви вже маєте ці дані
//       if (groupedItemsByID.length > 1) {
//         for (final anotherShopID in groupedItemsByID.sublist(1)) {
//           final anotherShopLocation =
//               ref.watch(fetchLocationConcreteShopProvider(anotherShopID)).value;
//           if (anotherShopLocation != null) {
//             final anotherShopLat = double.parse(anotherShopLocation[0]);
//             final anotherShopLng = double.parse(anotherShopLocation[1]);
//             polylineCoordinates.add(LatLng(anotherShopLat, anotherShopLng));
//           }
//         }
//       }

//       // Додаємо координати для користувача
//       polylineCoordinates.add(LatLng(userLatParsed, userLngParsed));

//       // Отримуємо маршрут між першою локацією і кінцевим користувачем
//       final result = await polylinesPoint.getRouteBetweenCoordinates(
//         googleApiKey: 'YOUR_GOOGLE_API_KEY',
//         request: PolylineRequest(
//           origin: PointLatLng(
//             polylineCoordinates.first.latitude,
//             polylineCoordinates.first.longitude,
//           ),
//           destination: PointLatLng(
//             polylineCoordinates.last.latitude,
//             polylineCoordinates.last.longitude,
//           ),
//           mode: TravelMode.driving,
//         ),
//       );

//       if (result.status != 'OK' || result.points.isEmpty) {
//         return [];
//       }

//       polylineCoordinates.addAll(
//         result.points.map((p) => LatLng(p.latitude, p.longitude)),
//       );

//       PolylineId id = PolylineId(shopID);
//       return [
//         Polyline(
//           polylineId: id,
//           color: AppColors.orangeColor,
//           points: polylineCoordinates,
//           width: 5,
//         ),
//       ];
//     }
//     return [];
//   },
// );
final polylineProvider = FutureProvider.family<List<Polyline>, String>(
  (ref, orderID) async {
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
    final groupedItemsByID =
        trackOrderItems.map((item) => item.shopID).toSet().toList();
    if (groupedItemsByID.isNotEmpty && groupedItemsByID.length > 1) {
      for (String shopID in groupedItemsByID) {
        final shopLocation = ref
            .watch(fetchLocationConcreteShopProvider(
                shopID)) // Змінив з groupedItemsByID[0] на shopID
            .value;
        if (shopLocation != null) {
          waypointsList.add('${shopLocation[0]},${shopLocation[1]}');
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

      // Додаємо координати для першого закладу
      coordinates.add(LatLng(shopLat, shopLng));

      // Якщо є більше одного закладу, додаємо ще
      final groupedItemsByI = groupedItemsByID[0]; // Ви вже маєте ці дані
      if (groupedItemsByID.length > 1) {
        for (final anotherShopID in groupedItemsByID.sublist(1)) {
          final anotherShopLocation =
              ref.watch(fetchLocationConcreteShopProvider(anotherShopID)).value;
          if (anotherShopLocation != null) {
            final anotherShopLat = double.parse(anotherShopLocation[0]);
            final anotherShopLng = double.parse(anotherShopLocation[1]);
            coordinates.add(LatLng(anotherShopLat, anotherShopLng));
          }
        }
      }

      // Додаємо координати для користувача
      coordinates.add(LatLng(userLatParsed, userLngParsed));

      // Отримуємо маршрут між першою локацією і кінцевим користувачем
      final result = await polylinesPoint.getRouteBetweenCoordinates(
        googleApiKey: 'AIzaSyBGHhRFdiPJxDxpX81Up_LhS71FQr4nJLY',
        request: PolylineRequest(
          origin: PointLatLng(
            coordinates.first.latitude,
            coordinates.first.longitude,
          ),
          destination: PointLatLng(
            coordinates.last.latitude,
            coordinates.last.longitude,
          ),
          // Перетворюємо координати з waypointsList у формат PointLatLng
          wayPoints: wayPointList.isNotEmpty
              ? wayPointList.map((waypoint) {
                  final coords = waypoint.split(',');
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
          color: AppColors.orangeColor,
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
    final groupedItemsByID =
        trackOrderItems.map((item) => item.shopID).toSet().toList();
    // final  shopLocationMap = {
    //   for (String shopID in groupedItemsByID)
    //     if (ref.watch(fetchLocationConcreteShopProvider(shopID)).value != null)
    //       shopID: ref.watch(fetchLocationConcreteShopProvider(shopID)).value!,
    // };

    final Map<String, List<String>> shopLocationMap = {
      for (String shopID in groupedItemsByID)
        // Check if the location is not null and cast it to List<String>
        if (ref.watch(fetchLocationConcreteShopProvider(shopID)).value != null)
          shopID: (ref.watch(fetchLocationConcreteShopProvider(shopID)).value!
                  as List)
              .cast<String>(),
    };

    final firstCoffeeShopInfo = groupedItemsByID.isNotEmpty
        ? ref
                .watch(fetchConcreteCoffeeShopProvider(groupedItemsByID[0]))
                .value ??
            []
        : [];
    String createLocationString(Map<String, List<dynamic>> locationMap) {
      final locationStrings = locationMap.entries.skip(1).map(
        (entry) {
          final latLngString = entry.value.map((e) => e.toString()).join(',');
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
        firstLat,
        firstLng,
        user?.addresses[0].lat ?? '',
        user?.addresses[0].lng ?? '',
        locationString,
      ),
    );

    final totalDistanceDeliveryValue = totalDistanceDelivery.value ?? '';
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

    // for (final shopID in groupedItemsByID) {
    //   final polylineAsync = ref.watch(polylineProvider(shopID));

    //   polylineAsync.whenData((polyline) {
    //     polylines.addAll(polyline);
    //   });
    // }

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
                trackItem?.deliveryStatus == DeliveryStatus.inProggress
                    // trackItem?.courier != null
                    ? Padding(
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
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${trackItem?.courier?.fullName ?? 'Courier name'}',
                                              style: AppFonts.poppinsSemiBold
                                                  .copyWith(
                                                fontSize: 14.0,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSurface,
                                              ),
                                            ),
                                            Text(
                                              'ID - ${trackItem?.courier?.id ?? '0'}',
                                              style: AppFonts.poppinsMedium
                                                  .copyWith(
                                                fontSize: 12.0,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onSurface,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5.0),
                                              child: Text(
                                                '${trackItem?.courier?.jobPosition ?? 'Coffee Courier'}',
                                                style: AppFonts.poppinsMedium
                                                    .copyWith(
                                                  fontSize: 9.0,
                                                  color:
                                                      AppColors.greyTitleColor,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    GestureDetector(
                                      onTap: () async {
                                        final phoneNumber =
                                            trackItem?.courier?.phoneNum ?? '';
                                        final Uri url = Uri(
                                            scheme: 'tel', path: phoneNumber);
                                        try {
                                          debugPrint(
                                              'Номер для дзвінка: $phoneNumber');
                                          await launchUrl(url);
                                        } catch (e) {
                                          BotToast.showText(text: 'Error $e');
                                        }
                                      },
                                      child: Container(
                                        height: 30.0,
                                        width: 30.0,
                                        decoration: BoxDecoration(
                                            color: AppColors.orangeColor,
                                            borderRadius:
                                                BorderRadius.circular(6.0),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Order Code : 267890-2',
                                          style:
                                              AppFonts.poppinsMedium.copyWith(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 5.0),
                                          child: Text(
                                            'ArrivedTime : 15 Min',
                                            style:
                                                AppFonts.poppinsMedium.copyWith(
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
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 17.0,
                                          vertical: 8.0,
                                        ),
                                        child: Text(
                                          'View',
                                          style:
                                              AppFonts.poppinsSemiBold.copyWith(
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
                      )
                    : const SizedBox.shrink(),
                trackItem?.orderAssemblyStatus == OrderAssemblyStatus.initial
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
              ],
            );
          }),
    );
  }
}
