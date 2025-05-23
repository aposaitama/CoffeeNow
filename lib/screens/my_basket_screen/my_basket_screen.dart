import 'package:bot_toast/bot_toast.dart';
import 'package:coffee_now/screens/add_to_basket/provider/add_to_hive_basket_box_provider.dart';

import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/screens/my_basket_screen/widgets/basket_item_tile.dart';
import 'package:coffee_now/screens/my_basket_screen/widgets/checkout_button.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class MyBasketScreen extends ConsumerWidget {
  const MyBasketScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref
        .watch(
          userProvider,
        )
        .value;
    final basketModel = ref.watch(
      BasketHiveProvider(
        user!.id.toString(),
      ),
    );
    final basketListItems = basketModel?.basketItem ?? [];
    final totalProductCount = basketListItems.fold<int>(
      0,
      (sum, item) => sum + item.productCount,
    );
    final totalBasketSumm = ref
        .watch(
          BasketHiveProvider(
            user.id.toString(),
          ).notifier,
        )
        .productCartTotalSumm();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Basket',
          style: AppFonts.poppinsMedium.copyWith(
            fontSize: 16.0,
            color: Theme.of(context).colorScheme.onSurface,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: basketListItems.length,
                itemBuilder: (context, index) {
                  return BasketItemTile(
                    onPressed: () => ref
                        .read(
                          BasketHiveProvider(
                            user.id.toString(),
                          ).notifier,
                        )
                        .removeProductFromCart(
                          basketListItems[index],
                        ),
                    basketItem: basketListItems[index].toBasketItem(),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 30,
              ),
              child: CheckoutButton(
                onCheckout: () {
                  if (user.addresses.isEmpty) {
                    context.push('/address_basket_setup');
                    BotToast.showText(text: 'You have to add address');
                  }
                  if (user.addresses.isNotEmpty) {
                    context.push(
                      '/checkout',
                    );
                  }
                },
                checkoutItemCount: totalProductCount.toString(),
                basketSumm: totalBasketSumm.toStringAsFixed(2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
