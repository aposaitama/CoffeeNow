import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class CutomGrayButton extends StatelessWidget {
  final String buttonText;

  const CutomGrayButton({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      height: 48.0,
      decoration: BoxDecoration(
        color: isDarkMode
            ? Theme.of(context).colorScheme.secondary
            : AppColors.grey228Color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: AppFonts.poppinsSemiBold.copyWith(
            color: const Color.fromRGBO(
              255,
              139,
              139,
              1,
            ),
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
