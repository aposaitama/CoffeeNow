import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchHistoryItemTile extends StatelessWidget {
  final String searchHistoryItem;
  final void Function()? onDelete;
  final void Function()? onTap;
  const SearchHistoryItemTile({
    super.key,
    required this.searchHistoryItem,
    this.onDelete,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Row(
              children: [
                SvgPicture.asset('lib/assets/icons/History (1).svg'),
                const SizedBox(
                  width: 20.0,
                ),
                Text(
                  searchHistoryItem,
                  style: AppFonts.poppinsMedium.copyWith(
                    color: AppColors.greyRegularTextColor,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: onDelete,
            child: SvgPicture.asset(
              'lib/assets/icons/Close (1).svg',
            ),
          )
        ],
      ),
    );
  }
}
