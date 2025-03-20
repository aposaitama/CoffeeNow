import 'dart:ui';

import 'package:coffee_now/screens/add_to_basket/provider/add_to_hive_basket_box_provider.dart';
import 'package:coffee_now/screens/auth/login_screen/widget/custom_button.dart';
import 'package:coffee_now/screens/checkout_page/widgets/change_delivery_method.dart';
import 'package:coffee_now/screens/checkout_page/widgets/choose_delivery_address.dart';
import 'package:coffee_now/screens/checkout_page/widgets/payment_option.dart';
import 'package:coffee_now/screens/checkout_page/widgets/placeorder_widget.dart';
import 'package:coffee_now/screens/checkout_page/widgets/section_separeted_text.dart';
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
    final isOrderSuccess = ref.watch(orderSuccessProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Checkout',
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
                ChooseDeliveryAddress(),
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
                            basketListItems[index].documentId,
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
                            '\$5.00',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('success');
                              ref.read(orderSuccessProvider.notifier).state =
                                  true;
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
                            '\$5.00',
                            style: AppFonts.poppinsRegular.copyWith(
                              fontSize: 14.0,
                              color: AppColors.orangeColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                    ],
                  ),
                ),
                const SectionSeparetedText(
                  title: 'Payment Details',
                ),
                PaymentOption(),
              ],
            ),
          )),
          PlaceorderWidget(
            totalPrice: '10.00',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
