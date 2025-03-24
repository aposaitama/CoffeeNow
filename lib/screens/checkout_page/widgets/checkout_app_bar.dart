import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class CheckoutAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String shopName;
  final String distanceValue;

  const CheckoutAppBar({
    super.key,
    required this.shopName,
    required this.distanceValue,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 70,
      title: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: shopName,
          style: AppFonts.poppinsMedium.copyWith(
            fontSize: 16.0,
            height: 2.0,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          children: [
            TextSpan(
              text: distanceValue.isNotEmpty
                  ? '\nDistance from you: ${((double.tryParse(distanceValue) ?? 0) / 1000).toStringAsFixed(1)} km'
                  : '\nDistance from you:',
              style: AppFonts.poppinsRegular.copyWith(
                fontSize: 12.0,
                color: AppColors.greyRegularTextColor,
              ),
            ),
          ],
        ),
      ),
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: Container(
          width: 32.0,
          height: 32.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black.withOpacity(0.5),
          ),
          child: Transform.rotate(
            angle: 90 * 3.1415927 / 180,
            child: SvgPicture.asset(
              fit: BoxFit.scaleDown,
              'lib/assets/icons/Arrow - Down 2.svg',
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
