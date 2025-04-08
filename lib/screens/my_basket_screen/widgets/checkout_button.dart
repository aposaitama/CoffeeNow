import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  final String checkoutItemCount;
  final String basketSumm;
  final void Function()? onCheckout;
  const CheckoutButton({
    super.key,
    required this.checkoutItemCount,
    required this.basketSumm,
    this.onCheckout,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCheckout,
      child: Container(
        height: 67.0,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 31.0,
                height: 31.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.onSecondary),
                child: Center(
                  child: Text(
                    checkoutItemCount,
                    style: AppFonts.poppinsMedium.copyWith(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              Text(
                "Go to checkout",
                style: AppFonts.poppinsMedium.copyWith(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5.0,
                    vertical: 2.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      6.0,
                    ),
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                  child: Text(
                    '\$ $basketSumm',
                    style: AppFonts.poppinsMedium.copyWith(
                      color: Colors.white,
                      fontSize: 14.0,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
