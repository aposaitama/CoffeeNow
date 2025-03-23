import 'package:coffee_now/screens/checkout_page/provider/delivery_method_provider/delivery_method_provider.dart';
import 'package:coffee_now/screens/checkout_page/provider/paymernt_method_provider/payment_method_provider.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

String _getMethodName(PaymentMethod paymentMethod) {
  switch (paymentMethod) {
    case PaymentMethod.card:
      return 'Card';
    case PaymentMethod.cash:
      return 'Cash';
  }
}

void showPaymentMethod(BuildContext context, WidgetRef ref) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
    ),
    builder: (context) {
      return Consumer(
        builder: (context, ref, _) {
          final paymentMethod = ref.watch(paymentMethodProvider);

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: PaymentMethod.values.map((method) {
                return ListTile(
                  title: Text(_getMethodName(method)),
                  trailing: paymentMethod == method
                      ? const Icon(Icons.check, color: AppColors.orangeColor)
                      : null,
                  onTap: () {
                    ref.read(paymentMethodProvider.notifier).state = method;
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
