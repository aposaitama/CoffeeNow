import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:coffee_now/utils/order_total_calculator.dart';
import 'package:coffee_now/screens/checkout_page/provider/delivery_method_provider/delivery_method_provider.dart';

class OrderSummary extends ConsumerWidget {
  final String userId;
  final String distanceValue;
  final double? deliveryPricePerKm;

  const OrderSummary({
    super.key,
    required this.userId,
    required this.distanceValue,
    required this.deliveryPricePerKm,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalBasketSumm = OrderTotalCalculator.calculateTotal(ref, userId);
    final deliveryFee = OrderTotalCalculator.calculateDeliveryFee(
        distanceValue, deliveryPricePerKm);
    final selectedDeliveryMethod = ref.watch(deliveryMethodProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal',
                style: AppFonts.poppinsRegular.copyWith(
                  fontSize: 14.0,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
              Text(
                '\$${totalBasketSumm.toStringAsFixed(2)}',
                style: AppFonts.poppinsRegular.copyWith(
                  fontSize: 14.0,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6.0),
          selectedDeliveryMethod == DeliveryMethod.delivery
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Delivery Fee',
                        style: AppFonts.poppinsRegular.copyWith(
                          fontSize: 14.0,
                          color: AppColors.orangeColor,
                        ),
                      ),
                    ),
                    Text(
                      '\$${deliveryFee.toStringAsFixed(2)}',
                      style: AppFonts.poppinsRegular.copyWith(
                        fontSize: 14.0,
                        color: AppColors.orangeColor,
                      ),
                    ),
                  ],
                )
              : const SizedBox.shrink(),
          const SizedBox(height: 24.0),
        ],
      ),
    );
  }
}
