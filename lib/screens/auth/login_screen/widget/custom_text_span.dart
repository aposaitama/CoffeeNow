import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class CustomTextSpan extends StatelessWidget {
  final String greyText;
  final String orangeText;

  const CustomTextSpan({
    super.key,
    required this.greyText,
    required this.orangeText,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: greyText,
        style: AppFonts.poppinsMedium.copyWith(
          fontSize: 14.0,
        ),
        children: [
          TextSpan(
            text: orangeText,
            style: AppFonts.poppinsMedium.copyWith(
              fontSize: 14.0,
              color: AppColors.orangeColor,
            ),
          ),
        ],
      ),
    );
  }
}
