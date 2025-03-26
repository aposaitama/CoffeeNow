import 'package:bot_toast/bot_toast.dart';
import 'package:coffee_now/screens/auth/address_setup_screen/provider/current_location/current_location_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void showLocationBottomSheet(BuildContext context, WidgetRef ref,
    TextEditingController addressController) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      final locationAsyncValue = ref.watch(getUserLocationProvider);

      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.5,
        child: locationAsyncValue.when(
          data: (locationData) {
            if (locationData == null) {
              return const Center(child: Text('Failed to get location'));
            }
            LatLng userLatLng =
                LatLng(locationData.latitude!, locationData.longitude!);
            return Column(
              children: [
                Expanded(
                  child: GoogleMap(
                    initialCameraPosition:
                        CameraPosition(target: userLatLng, zoom: 15),
                    markers: {
                      Marker(
                        markerId: const MarkerId('currentLocation'),
                        position: userLatLng,
                      )
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          addressController.text =
                              "Selected location: ${userLatLng.latitude}, ${userLatLng.longitude}";
                          BotToast.showText(text: 'Location Selected');
                          Navigator.pop(context);
                        },
                        child: const Text('Confirm'),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (err, stack) => Center(child: Text('Error: $err')),
        ),
      );
    },
  );
}
