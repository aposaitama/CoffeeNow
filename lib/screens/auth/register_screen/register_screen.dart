import 'package:coffee_now/screens/auth/login_screen/widget/custom_button.dart';
import 'package:coffee_now/screens/auth/login_screen/widget/custom_text_field.dart';
import 'package:coffee_now/screens/auth/login_screen/widget/custom_text_span.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                'REGISTER',
                style: AppFonts.poppinsSemiBold,
              ),
              const Gap(32.0),
              const CustomTextField(
                title: 'Fullname',
                hint: 'Jason Ranti',
              ),
              const Gap(28.0),
              const CustomTextField(
                title: 'Email',
                hint: 'exmpl@mail.com',
              ),
              const Gap(28.0),
              const CustomTextField(
                title: 'Phone Number',
                hint: '+62 8777 2221',
              ),
              const Gap(28.0),
              const CustomTextField(
                title: 'Password',
                hint: '********',
                isPassword: true,
              ),
              const Gap(36.0),
              const CustomButton(buttonText: 'REGISTER'),
              const Gap(38.0),
              GestureDetector(
                onTap: () => context.go('/login'),
                child: const CustomTextSpan(
                  greyText: 'Already have an account? ',
                  orangeText: 'Login',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
