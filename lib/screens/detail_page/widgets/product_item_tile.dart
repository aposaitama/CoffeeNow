import 'package:coffee_now/models/detailed_coffee_shop/detailed_coffee_shop_model.dart';
import 'package:coffee_now/screens/favourite_screen.dart/provider/favourite_items_provider.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductItemTile extends ConsumerWidget {
  final CoffeeShopProducts shopProduct;
  const ProductItemTile({super.key, required this.shopProduct});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 225.0,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(10.0),
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
                    ref.read(toogleFavoutireItemStatusProvider(
                        shopProduct.documentId, shopProduct.isInFavourite));
                  },
                  child: SvgPicture.asset(
                    fit: BoxFit.scaleDown,
                    shopProduct.isInFavourite
                        ? 'lib/assets/icons/FilledHeart.svg'
                        : 'lib/assets/icons/Heart.svg',
                  ),
                ),
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 10.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shopProduct.productName,
                  style: AppFonts.poppinsMedium.copyWith(
                    fontSize: 13.0,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                          width: 24.0,
                          height: 24.0,
                          child: SvgPicture.asset(
                            'lib/assets/icons/Basket.svg',
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
