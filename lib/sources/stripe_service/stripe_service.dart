import 'package:coffee_now/sources/stripe_service/stripe_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stripeServiceProvider = Provider<StripeService>((ref) {
  return StripeService();
});
