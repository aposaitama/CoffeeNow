import 'package:coffee_now/models/detailed_coffee_shop/detailed_coffee_shop_model.dart';
import 'package:coffee_now/screens/favourite_screen.dart/favourite_screen.dart';
import 'package:coffee_now/screens/favourite_screen.dart/provider/favourite_items_provider.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class FavouriteProductItemTile extends ConsumerWidget {
  final CoffeeShopProducts shopProduct;
  const FavouriteProductItemTile({super.key, required this.shopProduct});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider).value;
    final productWidth = MediaQuery.of(context).size.width;
    final isInFavourite = ref
        .watch(UserFavouritesProvider(user?.id.toString() ?? ''))
        .contains(shopProduct.documentId);

    return Container(
      width: (productWidth - 60) / 2,
      height: 225.0,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 6,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(alignment: Alignment.topRight, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                'http://localhost:1337${shopProduct.productImage.url}',
                width: double.infinity,
                height: 157.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 12.0,
                top: 12.0,
              ),
              child: Container(
                width: 22.0,
                height: 22.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey.withOpacity(
                    0.5,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {
                    ref
                        .read(UserFavouritesProvider(user?.id.toString() ?? '')
                            .notifier)
                        .toggleFavouriteItem(
                            user?.id.toString() ?? '', shopProduct.documentId);
                  },
                  child: SvgPicture.asset(
                    fit: BoxFit.scaleDown,
                    isInFavourite
                        ? 'lib/assets/icons/FilledHeart.svg'
                        : 'lib/assets/icons/Heart.svg',
                  ),
                ),
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shopProduct.productName,
                  style: AppFonts.poppinsMedium.copyWith(
                    fontSize: 13.0,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ ${shopProduct.price.toString()}',
                      style: AppFonts.bebasMedium.copyWith(
                        color: AppColors.orangeColor,
                      ),
                    ),
                    Container(
                      width: 26.0,
                      height: 26.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          context
                              .push('/add_to_basket/${shopProduct.documentId}');
                        },
                        child: SvgPicture.asset(
                          fit: BoxFit.scaleDown,
                          'lib/assets/icons/Basket.svg',
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
