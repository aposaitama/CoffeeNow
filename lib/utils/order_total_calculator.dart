import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:coffee_now/screens/add_to_basket/provider/add_to_hive_basket_box_provider.dart';

class OrderTotalCalculator {
  static double calculateTotal(WidgetRef ref, String userId) {
    final totalBasketSumm = ref
        .watch(
          BasketHiveProvider(userId).notifier,
        )
        .productCartTotalSumm();
    return totalBasketSumm;
  }

  static double calculateDeliveryFee(String distanceValue, double? pricePerKm) {
    if (distanceValue.isNotEmpty) {
      return (int.parse(distanceValue) / 1000) * (pricePerKm ?? 0);
    }
    return 0.0;
  }
}
