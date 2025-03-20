import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarTitle extends StatelessWidget {
  final String userName;
  const AppBarTitle({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                style: AppFonts.poppinsSemiBold.copyWith(
                  fontSize: 18.0,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
                text: 'Hello, ',
                children: [
                  TextSpan(
                      style: AppFonts.poppinsSemiBold.copyWith(
                        fontSize: 18.0,
                        color: AppColors.orangeColor,
                      ),
                      text: userName,
                      children: [
                        TextSpan(
                          style: AppFonts.poppinsSemiBold.copyWith(
                            fontSize: 18.0,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          text: '!',
                        )
                      ])
                ]),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(
                'lib/assets/icons/Location.svg',
                width: 16.0,
                height: 16.0,
                colorFilter: const ColorFilter.mode(
                  AppColors.orangeColor,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 6.0),
              Text(
                'Jakarta, Indonesia',
                style: AppFonts.bebasMedium.copyWith(
                  color: AppColors.orangeColor,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
