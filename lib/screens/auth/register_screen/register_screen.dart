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

class RegisterScreen extends ConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _formKey = GlobalKey<FormState>();
    final authNotifier = ref.watch(authNotifierProvider.notifier);
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final TextEditingController fullName = TextEditingController();
    final TextEditingController email = TextEditingController();
    final TextEditingController phoneNum = TextEditingController();
    final TextEditingController password = TextEditingController();
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
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Text(
                        'REGISTER',
                        style: AppFonts.poppinsSemiBold,
                      ),
                      const Gap(32.0),
                      CustomTextField(
                        controller: fullName,
                        title: 'Username',
                        hint: 'Jason Ranti',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Full name is required';
                          }
                          return null;
                        },
                      ),
                      const Gap(28.0),
                      CustomTextField(
                        controller: email,
                        title: 'Email',
                        hint: 'exmpl@mail.com',
                        validator: (value) {
                          final emailRegex = RegExp(
                              r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                          if (value == null || value.isEmpty) {
                            return 'Email is required';
                          } else if (!emailRegex.hasMatch(value)) {
                            return 'Email is not correct';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const Gap(28.0),
                      CustomTextField(
                        controller: phoneNum,
                        title: 'Phone Number',
                        hint: '+62 8777 2221',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Phone number is required';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const Gap(28.0),
                      CustomTextField(
                        controller: password,
                        title: 'Password',
                        hint: '********',
                        isPassword: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
                          } else if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const Gap(36.0),
                      GestureDetector(
                        onTap: () async {
                          if (_formKey.currentState?.validate() ?? false) {
                            await authNotifier.register(
                              fullName.text,
                              email.text,
                              password.text,
                              phoneNum.text,
                            );
                            final token = ref.read(authNotifierProvider);
                            if (token.hasValue) {
                              context.go('/address_setup');
                            }
                          }

                          // context.go('/auth_gate');
                        },
                        child: const CustomButton(
                          buttonText: 'REGISTER',
                        ),
                      ),
                      const Gap(38.0),
                      GestureDetector(
                        onTap: () => context.go('/login'),
                        child: const CustomTextSpan(
                          greyText: 'Already have an account? ',
                          orangeText: 'Login',
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
