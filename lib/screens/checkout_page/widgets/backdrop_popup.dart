import 'dart:ui';

import 'package:coffee_now/screens/auth/login_screen/widget/custom_button.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class BackdropPopup extends StatelessWidget {
  const BackdropPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            children: [
              SafeArea(
                child: SvgPicture.asset(
                  'lib/assets/icons/successfulOrder.svg',
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                'Your Order has been accepted',
                style: AppFonts.poppinsSemiBold.copyWith(
                  height: 1.5,
                  fontSize: 28.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                textAlign: TextAlign.center,
                'Your items has been placcd and is on it’s way to being processed',
                style: AppFonts.poppinsRegular.copyWith(
                  fontSize: 15.0,
                  height: 1.5,
                ),
              ),
              const SizedBox(
                height: 45.0,
              ),
              const CustomButton(
                buttonText: 'Track Order',
              ),
              const SizedBox(
                height: 25.0,
              ),
              GestureDetector(
                onTap: () => context.go('/home'),
                child: Text(
                  textAlign: TextAlign.center,
                  'Back To Home',
                  style: AppFonts.poppinsSemiBold.copyWith(
                    height: 1.5,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
