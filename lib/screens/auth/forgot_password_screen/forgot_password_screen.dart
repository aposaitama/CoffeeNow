import 'package:coffee_now/screens/auth/login_screen/widget/custom_button.dart';
import 'package:coffee_now/screens/auth/login_screen/widget/custom_text_field.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                'FORGOT PASSWORD',
                style: AppFonts.poppinsSemiBold,
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: 200.0,
                child: Text(
                  textAlign: TextAlign.center,
                  'We’ll send a password reset link to your email.',
                  style: AppFonts.poppinsMedium.copyWith(
                    height: 1.5,
                    fontSize: 14.0,
                    color: const Color.fromRGBO(
                      163,
                      163,
                      163,
                      1,
                    ),
                  ),
                ),
              ),
              const Gap(20.0),
              const CustomTextField(
                title: 'Email',
                hint: 'exmpl@mail.com',
              ),
              const Gap(44.0),
              const CustomButton(buttonText: 'Reset Password'),
            ],
          ),
        ),
      ),
    );
  }
}
