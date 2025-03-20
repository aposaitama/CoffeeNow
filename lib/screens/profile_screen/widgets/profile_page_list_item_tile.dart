import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePageListItemTile extends StatelessWidget {
  final String imgUrl;
  final String pageTitle;
  const ProfilePageListItemTile({
    super.key,
    required this.pageTitle,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 28.0,
              height: 28.0,
              decoration: BoxDecoration(
                color: isDarkMode
                    ? Theme.of(context).colorScheme.secondary
                    : AppColors.grey228Color,
                borderRadius: BorderRadius.circular(
                  6.0,
                ),
              ),
              child: SvgPicture.asset(
                width: 20.0,
                height: 20.0,
                imgUrl,
                fit: BoxFit.scaleDown,
                colorFilter: isDarkMode
                    ? const ColorFilter.mode(
                        Colors.white,
                        BlendMode.srcIn,
                      )
                    : null,
              ),
            ),
            const SizedBox(
              width: 14.0,
            ),
            Text(
              pageTitle,
              style: AppFonts.poppinsMedium.copyWith(
                fontSize: 14.0,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
        Transform.rotate(
          angle: 3.14 * 1.5,
          child: SvgPicture.asset(
            fit: BoxFit.scaleDown,
            'lib/assets/icons/Arrow - Down 2.svg',
            // colorFilter: const ColorFilter.mode(

            //   BlendMode.srcIn,
            // ),
          ),
        )
      ],
    );
  }
}
