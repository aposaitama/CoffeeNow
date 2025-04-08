import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class SearchCategoriesItemTile extends StatelessWidget {
  final bool isSelected;
  final String categoryName;
  const SearchCategoriesItemTile(
      {super.key, required this.categoryName, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: !isSelected
            ? Theme.of(context).colorScheme.onPrimaryContainer
            : AppColors.greenColor,
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: Text(
          categoryName,
          style: AppFonts.poppinsMedium.copyWith(
            color: !isSelected ? AppColors.greyTitleColor : Colors.white,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
