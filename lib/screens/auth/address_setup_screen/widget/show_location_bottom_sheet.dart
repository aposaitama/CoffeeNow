import 'package:coffee_now/screens/transactions_screen/widgets/reorder_popup_button.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// void showLocationBottomSheet(BuildContext context, WidgetRef ref,
//     TextEditingController addressController) {
//   final locationAsyncValue = ref.watch(getUserLocationProvider);
//   showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     builder: (context) {

//       return SizedBox(
//         height: MediaQuery.of(context).size.height * 0.5,
//         child: locationAsyncValue.when(
//           data: (position) {
//             if (position == null) {
//               return const Center(child: Text('Failed to get location'));
//             }
//             LatLng userLatLng = LatLng(position.latitude, position.longitude);
//             return Column(
//               children: [
//                 Expanded(
//                   child: GoogleMap(
//                     initialCameraPosition:
//                         CameraPosition(target: userLatLng, zoom: 15),
//                     markers: {
//                       Marker(
//                         markerId: const MarkerId('currentLocation'),
//                         position: userLatLng,
//                       )
//                     },
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       TextButton(
//                         onPressed: () => Navigator.pop(context),
//                         child: const Text('Cancel'),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           addressController.text =
//                               "Selected location: ${userLatLng.latitude}, ${userLatLng.longitude}";
//                           BotToast.showText(text: 'Location Selected');
//                           Navigator.pop(context);
//                         },
//                         child: const Text('Confirm'),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             );
//           },
//           loading: () => const Center(child: CircularProgressIndicator()),
//           error: (err, stack) => Center(child: Text('Error: $err')),
//         ),
//       );
//     },
//   );
// }
import 'package:flutter/services.dart';

void showLocationPicker(
  BuildContext context,
  double latitude,
  double longitude,
  void Function()? onSubmitted,
) {
  showModalBottomSheet(
    enableDrag: false,
    context: context,
    builder: (context) {
      final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

      return FutureBuilder<String>(
        future: rootBundle.loadString(
          isDarkMode
              ? 'lib/assets/map_style/dark_mode/dark.json'
              : 'lib/assets/map_style/light_mode/silver.json',
        ),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          return Column(
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Text(
                textAlign: TextAlign.center,
                'Is it correct location?',
                style: AppFonts.poppinsSemiBold.copyWith(
                  height: 1.5,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Expanded(
                child: GoogleMap(
                  myLocationButtonEnabled: false,
                  style: snapshot.data,
                  buildingsEnabled: true,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(latitude, longitude),
                    zoom: 17.0,
                  ),
                  markers: {
                    Marker(
                      markerId: const MarkerId('current_location'),
                      position: LatLng(latitude, longitude),
                    ),
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: onSubmitted,
                        child: const ReorderPopupButton(
                          buttonText: 'Yes',
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const ReorderPopupButton(
                          buttonText: 'No',
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   style: ButtonStyle(
                    //     backgroundColor: WidgetStatePropertyAll(
                    //         Theme.of(context).colorScheme.onPrimaryContainer),
                    //   ),
                    //   onPressed: () {
                    //     Navigator.pop(context);
                    //   },
                    //   child: Text(
                    //     'No',
                    //     style: AppFonts.poppinsSemiBold.copyWith(
                    //       color: Theme.of(context).colorScheme.onSurface,
                    //       fontSize: 18,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          );
        },
      );
    },
  );
}
