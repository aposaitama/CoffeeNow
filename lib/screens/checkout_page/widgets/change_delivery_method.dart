import 'package:coffee_now/screens/checkout_page/provider/delivery_method_provider/delivery_method_provider.dart';
import 'package:coffee_now/screens/checkout_page/widgets/delivery_method_sheet.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChangeDeliveryMethod extends ConsumerWidget {
  const ChangeDeliveryMethod({super.key});

  String _getMethodName(DeliveryMethod method) {
    switch (method) {
      case DeliveryMethod.delivery:
        return 'Delivery';
      case DeliveryMethod.selfPickup:
        return 'Self Pickup';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedMethod = ref.watch(deliveryMethodProvider);
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
                'lib/assets/icons/Delivery_Methods.svg',
              ),
              const SizedBox(
                width: 6.0,
              ),
              Text(
                _getMethodName(selectedMethod),
                style: AppFonts.poppinsMedium.copyWith(
                  fontSize: 14.0,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () => showDeliveryMethodSheet(context, ref),
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
