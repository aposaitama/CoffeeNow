import 'package:coffee_now/screens/detail_page/widgets/favourite_product_item_tile.dart';
import 'package:coffee_now/screens/detail_page/widgets/product_item_tile.dart';
import 'package:coffee_now/screens/favourite_screen.dart/provider/favourite_items_provider.dart';
import 'package:coffee_now/screens/home_screen/providers/recomended_items_provider/recomended_items_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

class FavouriteScreen extends ConsumerWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recomendedItems = ref.watch(fetchFavoutireItemsProvider).value ?? [];
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Items'),
        leading: IconButton(
          onPressed: () => context.go('/home'),
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
            child: GridView.builder(
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
              itemCount: recomendedItems.isEmpty ? 0 : recomendedItems.length,
              itemBuilder: (context, index) {
                final product = recomendedItems[index];
                // return ListTile(
                //   contentPadding: const EdgeInsets.symmetric(
                //       horizontal: 20.0, vertical: 10.0),
                //   leading: Image.network(
                //       'http://localhost:1337${product.productImage.url}',
                //       width: 50,
                //       height: 50),
                //   title: Text(product.productName),
                //   subtitle: Text(product.productDescription),
                //   trailing: Text('\$${product.price.toStringAsFixed(2)}'),
                // );
                return FavouriteProductItemTile(
                  shopProduct: product,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
