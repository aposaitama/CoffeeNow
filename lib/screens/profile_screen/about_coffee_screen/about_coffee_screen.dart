import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class AboutCoffeeScreen extends StatelessWidget {
  const AboutCoffeeScreen({super.key});

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
              'Coffee Now Apps is a modern food delivery application focused on providing a fast and convenient way to order your favorite meals and drinks. Whether you\'re craving a morning coffee, a tasty lunch, or a sweet treat, Coffee Now brings it right to your door. Built with a clean design and user-friendly interface, our app ensures a smooth and enjoyable experience from browsing to checkout. We\'re committed to quality, speed, and satisfaction—because great food should never keep you waiting.',
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
