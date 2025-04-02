import 'package:coffee_now/screens/add_to_basket/provider/add_to_hive_basket_box_provider.dart';
import 'package:coffee_now/screens/checkout_page/provider/checkout_provider/checkout_provider.dart';
import 'package:coffee_now/screens/checkout_page/provider/grouped_basket_provider/grouped_basket_provider.dart';
import 'package:coffee_now/screens/checkout_page/provider/delivery_method_provider/delivery_method_provider.dart';
import 'package:coffee_now/screens/checkout_page/provider/paymernt_method_provider/payment_method_provider.dart';
import 'package:coffee_now/screens/checkout_page/provider/stripe_payment_provider/payment_provider.dart';
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
import 'package:coffee_now/screens/checkout_page/widgets/shop_title_builder.dart';
import 'package:coffee_now/screens/detail_page/provider/shop_basic_info_provider/shop_basic_info.dart';
import 'package:coffee_now/screens/home_screen/providers/location_provider/location_provider.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/utils/address_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

    final basketListItems = basketModel?.basketItem ?? [];

    final groupedItems =
        ref.watch(groupProductsByShopProvider(basketListItems));

    final userAddress = ref.watch(
      FetchLocationProvider(
        user?.addresses.firstOrNull?.lat ?? '',
        user?.addresses.firstOrNull?.lng ?? '',
      ),
    );
    final fullUserDecodedAddress = Address(
      userAddress.value?.results[0].address_components ?? [],
    );

    final deliveryPricePerKm = ref.watch(
      fetchDeliveryPriceProvider,
    );

    final totalBasketSumm = ref
        .watch(
          BasketHiveProvider(
            user?.id.toString() ?? '',
          ).notifier,
        )
        .productCartTotalSumm();

    final entryList = groupedItems.value?.entries.toList() ?? [];
    final shopIDsList =
        entryList.isNotEmpty ? entryList.map((e) => e.key).toList() : [];

    final shopLocationMap = {
      for (String shopID in shopIDsList)
        if (ref.watch(fetchLocationConcreteShopProvider(shopID)).value != null)
          shopID: ref.watch(fetchLocationConcreteShopProvider(shopID)).value!,
    };
    // final shopLocationMap = {
    //   '69619726-5c86-4c1c-9f95-814fb0885d28': [
    //     49.44694895603774,
    //     32.055307926186245
    //   ],
    //   'aa342c5c-edcc-4aad-90c2-f6064f72eff0': [
    //     49.40425758412039,
    //     32.05083182423034
    //   ],
    //   'aa3412c5c-edcc-4aad-90c2-f6064f72eff0': [
    //     49.404235758412039,
    //     32.05083182423034
    //   ],
    // };

    String createLocationString(Map<String, List<dynamic>> locationMap) {
      final locationStrings = locationMap.entries.skip(1).map(
        (entry) {
          final latLngString = entry.value.map((e) => e.toString()).join(',');
          return latLngString;
        },
      ).toList();

      return locationStrings.join('|');
    }

    final paymentMethod = ref.watch(paymentMethodProvider);
    final locationString = createLocationString(shopLocationMap);

    final firstLocation = shopLocationMap.isNotEmpty
        ? shopLocationMap.entries.first.value
        : ['0.0', '0.0'];
    final firstLat = firstLocation[0].toString();

    final firstLng = firstLocation[1].toString();

    final totalDistanceDelivery = ref.watch(
      fetchDeliveryDistanceProvider(
        firstLat,
        firstLng,
        user?.addresses[0].lat ?? '',
        user?.addresses[0].lng ?? '',
        locationString,
      ),
    );

    final totalDistanceDeliveryValue = totalDistanceDelivery.value ?? '';
    final selectedDeliveryMethod = ref.watch(deliveryMethodProvider);
    final totalDistanceDeliveryValueParsed =
        totalDistanceDeliveryValue.isNotEmpty &&
                double.tryParse(
                      totalDistanceDeliveryValue,
                    ) !=
                    null
            ? double.parse(
                totalDistanceDeliveryValue,
              )
            : 0.0;

    final totalOrderPrice = selectedDeliveryMethod == DeliveryMethod.delivery
        ? totalDistanceDeliveryValue.isNotEmpty
            ? (totalBasketSumm +
                    (totalDistanceDeliveryValueParsed *
                        (deliveryPricePerKm.value ?? 0)))
                .toStringAsFixed(2)
            : totalBasketSumm.toStringAsFixed(2)
        : totalBasketSumm.toStringAsFixed(2);

    return Scaffold(
      appBar: const CheckoutAppBar(),
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
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: entryList.length,
                      itemBuilder: (context, index) {
                        final location = ref.watch(
                          fetchLocationConcreteShopProvider(
                            entryList[index].key,
                          ),
                        );
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
                        final entry = entryList[index];

                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20.0,
                                bottom: 5.0,
                              ),
                              child: ShopTitleBuilder(
                                shopName: ref
                                        .watch(
                                          fetchConcreteCoffeeShopProvider(
                                            entry.key,
                                          ),
                                        )
                                        .value
                                        ?.first
                                        .shopName ??
                                    '',
                                distanceValue: distance?.value ?? '',
                              ),
                            ),
                            BasketItemBuilder(
                                basketListItems: entry.value,
                                onDeletePressed: (index) {
                                  ref
                                      .read(BasketHiveProvider(
                                        user!.id.toString(),
                                      ).notifier)
                                      .removeProductFromCart(
                                        basketListItems[index],
                                      );
                                  ref.invalidate(
                                    groupProductsByShopProvider,
                                  );
                                }),
                          ],
                        );
                      }),
                  OrderSummary(
                    userId: user?.id.toString() ?? '',
                    distanceValue: totalDistanceDeliveryValue,
                    deliveryPricePerKm: deliveryPricePerKm.value,
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
            totalPrice: totalOrderPrice,
            onTap: () async {
              if (paymentMethod == PaymentMethod.card) {
                final int totalInCents =
                    (double.tryParse(totalOrderPrice)! * 100).toInt();

                final result = await ref.read(
                    makePaymentProvider(totalInCents.toString(), 'usd').future);
                if (result) {
                  ref.read(
                    checkoutProvider(
                      basketListItems,
                      (user?.id.toString() ?? ''),
                      selectedDeliveryMethod,
                      paymentMethod,
                      totalOrderPrice,
                      '',
                    ),
                  );
                  showDialog(
                    context: context,
                    builder: (context) => const BackdropPopup(),
                  );
                }
              }
              if (paymentMethod == PaymentMethod.cash) {
                ref.read(
                  checkoutProvider(
                    basketListItems,
                    (user?.id.toString() ?? ''),
                    selectedDeliveryMethod,
                    paymentMethod,
                    totalOrderPrice,
                    '',
                  ),
                );
                showDialog(
                  context: context,
                  builder: (context) => const BackdropPopup(),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
