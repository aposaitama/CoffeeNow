import 'package:flutter_riverpod/flutter_riverpod.dart';

enum DeliveryMethod {
  delivery,
  selfPickup,
}

final deliveryMethodProvider = StateProvider<DeliveryMethod>(
  (ref) => DeliveryMethod.delivery,
);
