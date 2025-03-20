import 'package:coffee_now/screens/detail_page/provider/full_info_detailed_page_provider.dart';
import 'package:coffee_now/screens/detail_page/widgets/favourite_product_item_tile.dart';
import 'package:coffee_now/screens/detail_page/widgets/top_coffee_shop_info.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedCategoryProvider = StateProvider<int>((ref) => 0);

class DetailCoffeePage extends ConsumerWidget {
  final String coffeeShopID;

  const DetailCoffeePage({super.key, required this.coffeeShopID});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    final coffeeShopData = ref.watch(fetchCoffeeShopDataProvider(coffeeShopID));
    final selectedCategoryIndex = ref.watch(selectedCategoryProvider);

    return Scaffold(
      body: coffeeShopData.when(
        data: (data) {
          final basicInfo = data.$1;
          final details = data.$2;
          if (details != null) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TopCoffeeShopInfo(coffeeShop: basicInfo[0]),
                const SizedBox(
                  height: 14.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: SizedBox(
                    height: 30,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: details.coffee_shop_categories.length,
                      itemBuilder: (context, index) {
                        final category = details.coffee_shop_categories[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 12.0),
                          child: GestureDetector(
                            onTap: () {
                              ref
                                  .read(selectedCategoryProvider.notifier)
                                  .state = index;
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical:
                                    selectedCategoryIndex == index ? 6.0 : 8.0,
                                horizontal: selectedCategoryIndex == index
                                    ? 16.0
                                    : 18.0,
                              ),
                              decoration: BoxDecoration(
                                border: selectedCategoryIndex == index
                                    ? Border.all(
                                        width: 2.0,
                                        color: AppColors.orangeColor,
                                      )
                                    : null,
                                color: selectedCategoryIndex == index
                                    ? Theme.of(context)
                                        .colorScheme
                                        .primaryContainer
                                    : Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: Text(
                                  category.categoryName,
                                  style: AppFonts.poppinsMedium.copyWith(
                                    fontSize: 12.0,
                                    color: selectedCategoryIndex == index
                                        ? AppColors.orangeColor
                                        : AppColors.greyA4TextColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
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
                    itemCount: details.coffee_shop_categories.isEmpty
                        ? 0
                        : details.coffee_shop_categories[selectedCategoryIndex]
                            .coffee_shop_products.length,
                    itemBuilder: (context, index) {
                      final product = details
                          .coffee_shop_categories[selectedCategoryIndex]
                          .coffee_shop_products[index];

                      return FavouriteProductItemTile(
                        shopProduct: product,
                      );
                    },
                  ),
                ),
              ],
            );
          } else {
            return const Center(child: Text('No details found.'));
          }
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, stack) => Center(child: Text('Error: $e')),
      ),
    );
  }
}
