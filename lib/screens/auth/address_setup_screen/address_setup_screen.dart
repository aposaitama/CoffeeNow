import 'package:coffee_now/screens/auth/address_setup_screen/widget/custom_list_text_field.dart';
import 'package:coffee_now/screens/auth/login_screen/widget/custom_button.dart';
import 'package:coffee_now/screens/auth/login_screen/widget/custom_text_field.dart';
import 'package:coffee_now/screens/auth/login_screen/widget/custom_text_span.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AddressSetupScreen extends StatelessWidget {
  const AddressSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
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
              const CustomTextField(
                title: 'Address Line 1',
                hint: 'Address',
              ),
              const Gap(28.0),
              const CustomTextField(
                title: 'Address Line 2',
                hint: 'Address',
              ),
              const Gap(28.0),
              const Row(
                children: [
                  Flexible(
                    child: CustomTextField(
                      title: 'ZIP Code',
                      hint: '0231',
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Flexible(
                    child: CustomTextField(
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
                onTap: () => context.go('/home'),
                child: const CustomButton(
                  buttonText: 'ADD ADDRESS',
                ),
              ),
              const Gap(19.0),
              GestureDetector(
                onTap: () => context.go('/home'),
                child: const Text(
                  'Skip for now',
                  style: AppFonts.poppinsMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
