import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class SearchCategoriesItemTile extends StatelessWidget {
  final String categoryName;
  const SearchCategoriesItemTile({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimaryContainer,
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
            color: AppColors.greyTitleColor,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
