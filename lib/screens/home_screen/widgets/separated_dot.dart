import 'package:coffee_now/style/colors.dart';
import 'package:flutter/material.dart';

class SeparatedDot extends StatelessWidget {
  const SeparatedDot({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10.0,
      height: 10.0,
      child: Center(
        child: Container(
          width: 2.0,
          height: 2.0,
          decoration: const BoxDecoration(
              color: AppColors.greyRegularTextColor, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
