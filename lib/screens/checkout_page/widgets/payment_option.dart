import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentOption extends StatelessWidget {
  const PaymentOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 24.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'lib/assets/icons/Group 6873.svg',
              ),
              const SizedBox(
                width: 6.0,
              ),
              Text(
                'Cash',
                style: AppFonts.poppinsMedium.copyWith(
                  fontSize: 14.0,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
          Text(
            'Add a Promo',
            style: AppFonts.poppinsRegular.copyWith(
              fontSize: 12.0,
              color: AppColors.orangeColor,
            ),
          )
        ],
      ),
    );
  }
}
