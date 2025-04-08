import 'package:bot_toast/bot_toast.dart';
import 'package:coffee_now/screens/auth/login_screen/widget/custom_button.dart';
import 'package:coffee_now/screens/auth/login_screen/widget/custom_text_field.dart';
import 'package:coffee_now/screens/auth/login_screen/widget/custom_text_span.dart';

import 'package:coffee_now/screens/auth/providers/auth_provider.dart';

import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();
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
                'LOGIN',
                style: AppFonts.poppinsSemiBold,
              ),
              const Gap(32.0),
              CustomTextField(
                controller: email,
                title: 'Email',
                hint: 'exmpl@mail.com',
              ),
              const Gap(28.0),
              CustomTextField(
                controller: password,
                title: 'Password',
                hint: '********',
                isPassword: true,
              ),
              const SizedBox(
                height: 9.0,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: [
              //     GestureDetector(
              //       onTap: () => context.go('/forgot_password'),
              //       child: Text(
              //         'Forgot Password ?',
              //         style: AppFonts.poppinsMedium.copyWith(
              //           fontSize: 12.0,
              //           color: AppColors.orangeColor,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              const Gap(28.0),
              GestureDetector(
                // onTap: () => context.go('/home'),
                onTap: () async {
                  final loginResult = await authNotifier.login(
                    email.text,
                    password.text,
                  );

                  if (loginResult) {
                    context.go('/auth_gate');
                  } else {
                    BotToast.showText(
                        text: 'Login failed. Please check your credentials.');
                  }
                },
                child: const CustomButton(buttonText: 'LOGIN'),
              ),
              const Gap(32.0),
              GestureDetector(
                onTap: () {
                  context.go('/register');
                },
                child: const CustomTextSpan(
                  greyText: 'Don’t have an account? ',
                  orangeText: 'Register',
                ),
              ),
              const Gap(38.0),
              // const ChooseOptionSpacer(),
              // const Gap(33.0),
              // const Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     LoginViaService(
              //       assetName:
              //           'lib/assets/icons/eae04c8feab2b454fdff233c30364803.png',
              //     ),
              //     SizedBox(
              //       width: 54.0,
              //     ),
              //     LoginViaService(
              //       assetName: 'lib/assets/icons/facebook.png',
              //     )
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
