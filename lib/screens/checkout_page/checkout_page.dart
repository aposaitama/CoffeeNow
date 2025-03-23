import 'package:coffee_now/screens/add_to_basket/provider/add_to_hive_basket_box_provider.dart';
import 'package:coffee_now/screens/checkout_page/provider/delivery_method_provider/delivery_method_provider.dart';
import 'package:coffee_now/screens/checkout_page/widgets/backdrop_popup.dart';
import 'package:coffee_now/screens/checkout_page/widgets/change_delivery_method.dart';
import 'package:coffee_now/screens/checkout_page/widgets/choose_delivery_address.dart';
import 'package:coffee_now/screens/checkout_page/widgets/payment_option.dart';
import 'package:coffee_now/screens/checkout_page/widgets/placeorder_widget.dart';
import 'package:coffee_now/screens/checkout_page/provider/get_shop_info_provider.dart';
import 'package:coffee_now/screens/checkout_page/widgets/section_separeted_text.dart';
import 'package:coffee_now/screens/detail_page/provider/shop_basic_info_provider/shop_basic_info.dart';
import 'package:coffee_now/screens/home_screen/providers/location_provider/location_provider.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/screens/my_basket_screen/widgets/basket_item_tile.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

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
      appBar: AppBar(
        toolbarHeight: 70,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: shop.value?[0].shopName ?? '',
            style: AppFonts.poppinsMedium.copyWith(
              fontSize: 16.0,
              height: 2.0,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            children: [
              TextSpan(
                text: distanceValue.isNotEmpty
                    ? '\nDistance from you: ${((int.tryParse(distanceValue) ?? 1) / 1000).toStringAsFixed(1)} km'
                    : '\nDistance from you:',
                style: AppFonts.poppinsRegular.copyWith(
                  fontSize: 12.0,
                  color: AppColors.greyRegularTextColor,
                ),
              ),
            ],
          ),
        ),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: Container(
            width: 32.0,
            height: 32.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black.withOpacity(
                0.5,
              ),
            ),
            child: Transform.rotate(
                angle: 90 * 3.1415927 / 180,
                child: SvgPicture.asset(
                  fit: BoxFit.scaleDown,
                  'lib/assets/icons/Arrow - Down 2.svg',
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                )),
          ),
        ),
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
                  const ChooseDeliveryAddress(),
                  Container(
                    height: 3.0,
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                  ),
                  const ChangeDeliveryMethod(),
                  SectionSeparetedText(
                    title: 'Order Summary',
                    onOptionTap: () {},
                    optionTitle: 'Add items',
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: basketListItems.length,
                    itemBuilder: (context, index) {
                      return BasketItemTile(
                        onPressed: () => ref
                            .read(BasketHiveProvider(
                              user!.id.toString(),
                            ).notifier)
                            .removeProductFromCart(
                              basketListItems[index],
                            ),
                        basketItem: basketListItems[index].toBasketItem(),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15.0,
                        ),
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
                              '\$${totalBasketSumm.toString()}',
                              style: AppFonts.poppinsRegular.copyWith(
                                fontSize: 14.0,
                                color: Theme.of(context).colorScheme.onSurface,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        selectedDeliveryMethod == DeliveryMethod.delivery
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      ref
                                          .read(orderSuccessProvider.notifier)
                                          .state = true;
                                    },
                                    child: Text(
                                      'Delivery Fee',
                                      style: AppFonts.poppinsRegular.copyWith(
                                        fontSize: 14.0,
                                        color: AppColors.orangeColor,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    distanceValue != ''
                                        ? '\$${((int.parse(distanceValue) / 1000) * (deliveryPricePerKm.value ?? 0)).toStringAsFixed(2)}'
                                        : '0.0',
                                    style: AppFonts.poppinsRegular.copyWith(
                                      fontSize: 14.0,
                                      color: AppColors.orangeColor,
                                    ),
                                  ),
                                ],
                              )
                            : const SizedBox.shrink(),
                        const SizedBox(
                          height: 24.0,
                        ),
                      ],
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
