import 'package:coffee_now/screens/add_to_basket/provider/add_to_hive_basket_box_provider.dart';
import 'package:coffee_now/screens/checkout_page/provider/delivery_method_provider/delivery_method_provider.dart';
import 'package:coffee_now/screens/checkout_page/widgets/backdrop_popup.dart';
import 'package:coffee_now/screens/checkout_page/widgets/baket_item_builder.dart';
import 'package:coffee_now/screens/checkout_page/widgets/change_delivery_method.dart';
import 'package:coffee_now/screens/checkout_page/widgets/checkout_app_bar.dart';
import 'package:coffee_now/screens/checkout_page/widgets/choose_delivery_address.dart';
import 'package:coffee_now/screens/checkout_page/widgets/order_summary_widget.dart';
import 'package:coffee_now/screens/checkout_page/widgets/payment_option.dart';
import 'package:coffee_now/screens/checkout_page/widgets/placeorder_widget.dart';
import 'package:coffee_now/screens/checkout_page/provider/get_shop_info_provider.dart';
import 'package:coffee_now/screens/checkout_page/widgets/section_separeted_text.dart';
import 'package:coffee_now/screens/checkout_page/widgets/separator_widget.dart';
import 'package:coffee_now/screens/detail_page/provider/shop_basic_info_provider/shop_basic_info.dart';
import 'package:coffee_now/screens/home_screen/providers/location_provider/location_provider.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/utils/address_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final orderSuccessProvider = StateProvider<bool>((ref) => false);

class CheckoutPage extends ConsumerWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider).value;
    final basketModel = ref.watch(
      BasketHiveProvider(
        user?.id.toString() ?? '',
      ),
    );
    final userAddress = ref.watch(FetchLocationProvider(
        user?.addresses.firstOrNull?.lat ?? '',
        user?.addresses.firstOrNull?.lng ?? ''));
    final fullUserDecodedAddress =
        Address(userAddress.value?.results[0].address_components ?? []);

    final basketListItems = basketModel?.basketItem ?? [];

    final deliveryPricePerKm = ref.watch(fetchDeliveryPriceProvider);

    final coffeeShopData = ref.watch(
      FetchShopIDProvider(
        basketListItems[0].shopID,
      ),
    );

    final location = ref.watch(
      fetchLocationConcreteShopProvider(
        coffeeShopData.value ?? '',
      ),
    );
    final totalBasketSumm = ref
        .watch(
          BasketHiveProvider(
            user?.id.toString() ?? '',
          ).notifier,
        )
        .productCartTotalSumm();

    final distance = location.value != null
        ? ref.watch(
            fetchDistanceProvider(
              user?.addresses[0].lat ?? '',
              user?.addresses[0].lng ?? '',
              location.value?[0] ?? '',
              location.value?[1] ?? '',
            ),
          )
        : null;
    final distanceValue = distance?.value ?? '';
    final shop =
        ref.watch(fetchConcreteCoffeeShopProvider(coffeeShopData.value ?? ''));
    final selectedDeliveryMethod = ref.watch(deliveryMethodProvider);
    // final isOrderSuccess = ref.watch(orderSuccessProvider);
    return Scaffold(
      appBar: CheckoutAppBar(
        distanceValue: distanceValue,
        shopName: shop.value?[0].shopName ?? '',
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SectionSeparetedText(
                    title: 'Deliver to',
                  ),
                  ChooseDeliveryAddress(
                    address: fullUserDecodedAddress.address,
                    cityAndCountry:
                        '${fullUserDecodedAddress.city}, ${fullUserDecodedAddress.country}',
                  ),
                  const SeparatorWidget(),
                  const ChangeDeliveryMethod(),
                  SectionSeparetedText(
                    title: 'Order Summary',
                    onOptionTap: () {},
                    optionTitle: 'Add items',
                  ),
                  BasketItemBuilder(
                    basketListItems: basketListItems,
                    onDeletePressed: (index) => ref
                        .read(BasketHiveProvider(
                          user!.id.toString(),
                        ).notifier)
                        .removeProductFromCart(
                          basketListItems[index],
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: OrderSummary(
                      userId: user?.id.toString() ?? '',
                      distanceValue: distanceValue,
                      deliveryPricePerKm: deliveryPricePerKm.value,
                    ),
                  ),
                  const SectionSeparetedText(
                    title: 'Payment Details',
                  ),
                  const PaymentOption(),
                ],
              ),
            ),
          ),
          PlaceorderWidget(
            totalPrice: selectedDeliveryMethod == DeliveryMethod.delivery
                ? distanceValue.isNotEmpty
                    ? (totalBasketSumm +
                            ((int.parse(distanceValue) / 1000) *
                                (deliveryPricePerKm.value ?? 0)))
                        .toStringAsFixed(2)
                    : totalBasketSumm.toStringAsFixed(2)
                : totalBasketSumm.toStringAsFixed(2),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const BackdropPopup(),
              );
            },
          )
        ],
      ),
    );
  }
}
