import 'package:coffee_now/screens/profile_screen/settings_screen/provider/theme_provider.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Container(
            width: 32.0,
            height: 32.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(0.5),
            ),
            child: Transform.rotate(
              angle: 90 * 3.1415927 / 180,
              child: SvgPicture.asset(
                fit: BoxFit.scaleDown,
                'lib/assets/icons/Arrow - Down 2.svg',
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Text(
              'At Coffee Now Apps, we are committed to protecting your privacy. This Privacy Policy outlines how we collect, use, and protect your information when you use our services. By using our app, you agree to the collection and use of information in accordance with this policy. 1. Information We Collect We collect the following types of information to provide you with a better experience: Personal Information: When you register or make a purchase through our app, we may collect personal information such as your name, email address, phone number, and delivery address. Location Data: To provide accurate delivery services, we collect your location information, including your address and GPS coordinates. Payment Information: If you make a payment, we collect payment information such as credit card details or other payment methods. Usage Data: We may collect information about how you interact with the app, such as usage patterns, device information, and IP address.',
              style: AppFonts.bebasMedium.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          )
        ],
      ),
    );
  }
}
