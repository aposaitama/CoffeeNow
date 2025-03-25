import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class ShopTitleBuilder extends StatelessWidget {
  final String shopName;
  final String distanceValue;
  const ShopTitleBuilder(
      {super.key, required this.shopName, required this.distanceValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            shopName,
            style: AppFonts.poppinsMedium.copyWith(
              fontSize: 16.0,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
        Text(
          distanceValue.isNotEmpty
              ? '\nDistance from you: ${((double.tryParse(distanceValue) ?? 0) / 1000).toStringAsFixed(1)} km'
              : '\nDistance from you:',
          style: AppFonts.poppinsRegular.copyWith(
            fontSize: 12.0,
            color: AppColors.greyRegularTextColor,
          ),
        )
      ],
    );
  }
}
