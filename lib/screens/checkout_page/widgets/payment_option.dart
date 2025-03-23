import 'package:coffee_now/screens/checkout_page/provider/paymernt_method_provider/payment_method_provider.dart';
import 'package:coffee_now/screens/checkout_page/widgets/delivery_method_sheet.dart';
import 'package:coffee_now/screens/checkout_page/widgets/payment_method_sheet.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentOption extends ConsumerWidget {
  const PaymentOption({super.key});

  String _getMethodName(PaymentMethod paymentMethod) {
    switch (paymentMethod) {
      case PaymentMethod.card:
        return 'Card';
      case PaymentMethod.cash:
        return 'Cash';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paymentMethod = ref.watch(paymentMethodProvider);
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
                'lib/assets/icons/Group 6873.svg',
              ),
              const SizedBox(
                width: 6.0,
              ),
              Text(
                _getMethodName(
                  paymentMethod,
                ),
                style: AppFonts.poppinsMedium.copyWith(
                  fontSize: 14.0,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              showPaymentMethod(context, ref);
            },
            child: Text(
              'Change Options',
              style: AppFonts.poppinsRegular.copyWith(
                fontSize: 12.0,
                color: AppColors.orangeColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
