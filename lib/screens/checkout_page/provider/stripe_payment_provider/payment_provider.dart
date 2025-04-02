import 'package:coffee_now/sources/stripe_service/stripe_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'payment_provider.g.dart';

@riverpod
Future<bool> makePayment(Ref ref, String amount, String currency) async {
  final stripeService = ref.read(stripeServiceProvider);

  try {
    final paymentIntent =
        await stripeService.createPaymentIntent(amount, currency);
    if (paymentIntent != null) {
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntent,
        ),
      );

      try {
        await stripeService.processPayment().then((value) {
          return true;
        });
        return true;
      } catch (e) {
        return false;
      }
    }
    return false;
  } catch (e) {
    return false;
  }
}
