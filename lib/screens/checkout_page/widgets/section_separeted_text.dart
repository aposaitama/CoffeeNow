import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class SectionSeparetedText extends StatelessWidget {
  final String title;
  final String? optionTitle;
  final void Function()? onOptionTap;
  const SectionSeparetedText(
      {super.key, required this.title, this.optionTitle, this.onOptionTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39.0,
      color: Theme.of(context).colorScheme.onPrimaryContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppFonts.poppinsMedium.copyWith(
                fontSize: 14.0,
                color: AppColors.greyRegularTextColor,
              ),
            ),
            if (optionTitle != null && onOptionTap != null)
              GestureDetector(
                onTap: onOptionTap,
                child: Text(
                  optionTitle!,
                  style: AppFonts.poppinsMedium.copyWith(
                    fontSize: 12.0,
                    color: AppColors.orangeColor,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
