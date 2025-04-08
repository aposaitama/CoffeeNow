import 'package:coffee_now/screens/add_to_basket/provider/load_concrete_product_provider.dart';
import 'package:coffee_now/screens/detail_page/widgets/favourite_product_item_tile.dart';

import 'package:coffee_now/screens/favourite_screen/provider/favourite_items_provider.dart';

import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class FavouriteScreen extends ConsumerWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider).value;
    final recomendedItems =
        ref.watch(UserFavouritesProvider(user?.id.toString() ?? ''));

    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favourite Items',
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
      body: Column(
        children: [
          Expanded(
            child: recomendedItems.isNotEmpty
                ? GridView.builder(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      bottom: 40.0,
                    ),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: ((width / 2) - 40) / 225,
                    ),
                    itemCount:
                        recomendedItems.isEmpty ? 0 : recomendedItems.length,
                    itemBuilder: (context, index) {
                      final product = recomendedItems[index];
                      final productInfo = ref
                          .watch(
                              fetchLightModelConcreteProductProvider(product))
                          .value;

                      return productInfo == null
                          ? const SizedBox()
                          : FavouriteProductItemTile(shopProduct: productInfo);
                    },
                  )
                : const Center(
                    child: Text(
                      'No favourite items',
                      style: AppFonts.bebasMedium,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
