import 'package:coffee_now/screens/checkout_page/provider/delivery_method_provider/delivery_method_provider.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

String _getMethodName(DeliveryMethod method) {
  switch (method) {
    case DeliveryMethod.delivery:
      return 'Delivery';
    case DeliveryMethod.selfPickup:
      return 'Self Pickup';
  }
}

void showDeliveryMethodSheet(BuildContext context, WidgetRef ref) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
    ),
    builder: (context) {
      return Consumer(
        builder: (context, ref, _) {
          final selectedMethod = ref.watch(deliveryMethodProvider);

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: DeliveryMethod.values.map((method) {
                return ListTile(
                  title: Text(_getMethodName(method)),
                  trailing: selectedMethod == method
                      ? const Icon(Icons.check, color: AppColors.orangeColor)
                      : null,
                  onTap: () {
                    ref.read(deliveryMethodProvider.notifier).state = method;
                    Navigator.pop(context);
                  },
                );
              }).toList(),
            ),
          );
        },
      );
    },
  );
}
