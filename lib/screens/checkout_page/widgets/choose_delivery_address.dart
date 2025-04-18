import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseDeliveryAddress extends StatelessWidget {
  final void Function()? onTap;
  final String address;
  final String cityAndCountry;
  const ChooseDeliveryAddress(
      {super.key,
      required this.address,
      required this.cityAndCountry,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 24.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'lib/assets/icons/Location_checkout.svg',
              ),
              const SizedBox(
                width: 6.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address,
                    style: AppFonts.poppinsMedium.copyWith(
                      fontSize: 14.0,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    cityAndCountry,
                    style: AppFonts.poppinsRegular.copyWith(
                      fontSize: 12.0,
                      color: AppColors.greyRegularTextColor,
                    ),
                  )
                ],
              )
            ],
          ),
          GestureDetector(
            onTap: onTap,
            child: Transform.rotate(
              angle: 3.14 * 1.5,
              child: SvgPicture.asset(
                fit: BoxFit.scaleDown,
                'lib/assets/icons/Arrow - Down 2.svg',
              ),
            ),
          )
        ],
      ),
    );
  }
}
