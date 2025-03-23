import 'package:flutter_riverpod/flutter_riverpod.dart';

enum PaymentMethod {
  cash,
  card,
}

final paymentMethodProvider = StateProvider<PaymentMethod>(
  (ref) => PaymentMethod.card,
);
