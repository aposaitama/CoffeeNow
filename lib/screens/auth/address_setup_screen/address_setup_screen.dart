import 'package:bot_toast/bot_toast.dart';
import 'package:coffee_now/screens/auth/address_setup_screen/provider/address_lat_long_provider/address_lat_long_provider.dart';
import 'package:coffee_now/screens/auth/address_setup_screen/provider/put_address_document_provider/put_address_document_provider.dart';
import 'package:coffee_now/screens/auth/address_setup_screen/widget/custom_list_text_field.dart';
import 'package:coffee_now/screens/auth/address_setup_screen/widget/show_location_bottom_sheet.dart';
import 'package:coffee_now/screens/auth/login_screen/widget/custom_button.dart';
import 'package:coffee_now/screens/auth/login_screen/widget/custom_text_field.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class AddressSetupScreen extends ConsumerWidget {
  const AddressSetupScreen({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final user = ref.watch(userProvider).value;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final TextEditingController addressLine1Controller =
        TextEditingController(text: 'Narbutivska 156/2');
    final TextEditingController addressLine2Controller =
        TextEditingController();
    final TextEditingController zipCodeController =
        TextEditingController(text: '18000');
    final TextEditingController cityController = TextEditingController();

    Future<void> _fetchAndShowLocation() async {
      final address =
          '${addressLine1Controller.text} ${addressLine2Controller.text} ${zipCodeController.text} ${cityController.text}';

      if (address.trim().isEmpty) {
        BotToast.showText(text: 'Please enter a valid address');
        return;
      }

      try {
        final response = await ref.read(fetchLatLongProvider(address).future);

        if (response?.results.isEmpty ?? true) {
          BotToast.showText(text: 'Address not found');
          return;
        }

        final lat = response!.results[0].geometry.location.lat;
        final lng = response.results[0].geometry.location.lng;

        final idResponse = await ref
            .read(PutAddressDocProvider(lat.toString(), lng.toString()).future);

        if (idResponse != null) {
          showLocationPicker(context, lat, lng, () async {
            final connectResponse = await ref.read(
                ConnectAddressDocProvider(idResponse, user?.id.toString() ?? '')
                    .future);
            if (connectResponse != null) {
              ref.invalidate(userProvider);

              context.go('/home');
            }
          });
        }
      } catch (e) {
        BotToast.showText(text: 'Error: $e');
      }
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 52.0,
              ),
              Center(
                child: SvgPicture.asset(
                  !isDarkMode
                      ? 'lib/assets/icons/Frame1.svg'
                      : 'lib/assets/icons/Frame1-1.svg',
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                'ADDRESS SETUP',
                style: AppFonts.poppinsSemiBold,
              ),
              const Gap(32.0),
              CustomTextField(
                controller: addressLine1Controller,
                title: 'Address Line 1',
                hint: 'Address',
              ),
              const Gap(28.0),
              CustomTextField(
                controller: addressLine2Controller,
                title: 'Address Line 2',
                hint: 'Address',
              ),
              const Gap(28.0),
              Row(
                children: [
                  Flexible(
                    child: CustomTextField(
                      controller: zipCodeController,
                      title: 'ZIP Code',
                      hint: '0231',
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Flexible(
                    child: CustomTextField(
                      controller: cityController,
                      title: 'City',
                      hint: 'Jakarta',
                    ),
                  ),
                ],
              ),
              const Gap(28.0),
              const CustomListTextField(
                title: 'Country',
                hint: 'Country',
              ),
              const Gap(36.0),
              GestureDetector(
                onTap: _fetchAndShowLocation,
                child: const CustomButton(
                  buttonText: 'ADD ADDRESS',
                ),
              ),
              const Gap(19.0),
              GestureDetector(
                onTap: () => context.go('/home'),
                // onTap: () async {
                //   try {
                //     final response = await ref.read(fetchLatLongProvider(
                //             '${addressLine1Controller.text} ${addressLine2Controller.text} ${zipCodeController.text} ${cityController.text}')
                //         .future);

                //     // if ((response?.results ?? []).isEmpty) {
                //     //   print(response);
                //     //   BotToast.showText(text: 'Enter correct addressssss');
                //     // }

                //     final idResponse = await ref.read(PutAddressDocProvider(
                //             response?.results[0].geometry.location.lat
                //                     .toString() ??
                //                 '',
                //             response?.results[0].geometry.location.lng
                //                     .toString() ??
                //                 '')
                //         .future);
                //     if (idResponse != null) {
                //       showLocationPicker(
                //           context,
                //           response?.results[0].geometry.location.lat ?? 0.0,
                //           response?.results[0].geometry.location.lng ?? 0.0,
                //           () async {
                //         final idResponse = await ref.read(PutAddressDocProvider(
                //                 response?.results[0].geometry.location.lat
                //                         .toString() ??
                //                     '',
                //                 response?.results[0].geometry.location.lng
                //                         .toString() ??
                //                     '')
                //             .future);
                //         idResponse != null
                //             ? ref.read(
                //                 ConnectAddressDocProvider(
                //                   idResponse,
                //                   user!.id.toString(),
                //                 ),
                //               )
                //             : null;
                //       });
                //     }
                //   } catch (e) {
                //     print(e);
                //     BotToast.showText(text: 'Enter correct address');
                //   }
                // },
                child: const Text(
                  'Skip for now',
                  style: AppFonts.poppinsMedium,
                ),
              ),
              const Gap(19.0),
              // GestureDetector(
              //   onTap: () => {
              //     // showLocationPicker(
              //     //   context,
              //     // ),
              //   },
              //   child: const Text(
              //     'Use current location',
              //     style: AppFonts.poppinsMedium,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
