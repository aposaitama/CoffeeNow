import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class ProductOptionsItemTile extends StatelessWidget {
  final String optionsTitle;
  final bool isSelected;
  final void Function()? onCirclePressed;
  const ProductOptionsItemTile({
    super.key,
    required this.optionsTitle,
    this.onCirclePressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            optionsTitle,
            style: AppFonts.poppinsRegular.copyWith(
              fontSize: 13.0,
              color: AppColors.greyA4TextColor,
            ),
          ),
          GestureDetector(
            onTap: onCirclePressed,
            child: Container(
              width: 16.0,
              height: 16.0,
              decoration: const BoxDecoration(
                color: AppColors.greyRegularTextColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  width: 14.0,
                  height: 14.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isSelected
                        ? AppColors.greyRegularTextColor
                        : Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
