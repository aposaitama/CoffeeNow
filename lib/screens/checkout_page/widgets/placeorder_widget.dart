import 'package:coffee_now/screens/auth/login_screen/widget/custom_button.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class PlaceorderWidget extends StatelessWidget {
  final void Function()? onTap;
  final String totalPrice;
  const PlaceorderWidget({super.key, this.onTap, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.onPrimaryContainer,
                blurRadius: 1.0,
                spreadRadius: 2.0,
                offset: const Offset(0, 10),
              ),
            ]),
        height: 132.0,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 18.0,
            bottom: 24.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: AppFonts.poppinsMedium.copyWith(
                      fontSize: 14.0,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    '\$$totalPrice',
                    style: AppFonts.poppinsMedium.copyWith(
                      fontSize: 18.0,
                      color: AppColors.orangeColor,
                    ),
                  )
                ],
              ),
              CustomButton(
                buttonText: 'Place Order',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
