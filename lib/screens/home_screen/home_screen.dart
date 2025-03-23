import 'package:coffee_now/screens/checkout_page/widgets/provider/get_shop_info_provider.dart';
import 'package:coffee_now/screens/detail_page/widgets/favourite_product_item_tile.dart';
import 'package:coffee_now/screens/home_screen/providers/advert_banner_provider/advert_banner_provider.dart';
import 'package:coffee_now/screens/home_screen/providers/coffee_shop_provider/coffee_shop_provider.dart';
import 'package:coffee_now/screens/home_screen/providers/location_provider/location_provider.dart';
import 'package:coffee_now/screens/home_screen/providers/recomended_items_provider/recomended_items_provider.dart';
import 'package:coffee_now/screens/home_screen/widgets/app_bar_actions.dart';
import 'package:coffee_now/screens/home_screen/widgets/app_bar_title.dart';
import 'package:coffee_now/screens/home_screen/widgets/coffee_shop_item_tile.dart';
import 'package:coffee_now/style/font.dart';
import 'package:coffee_now/utils/address_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:coffee_now/screens/home_screen/providers/brand_image_provider/brand_image_provider.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/screens/home_screen/widgets/popular_brand_carousel_item.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final advertBanner = ref.watch(fetchAdvertBannerProvider).value ?? [];
    final coffeeShop = ref.watch(fetchCoffeeShopProvider).value ?? [];
    final brands = ref.watch(fetchBrandsProvider).value ?? [];
    final user = ref.watch(userProvider).value;
    final location = ref.watch(
      fetchLocationProvider(
        user?.addresses.isNotEmpty == true ? user!.addresses[0].lat : '',
        user?.addresses.isNotEmpty == true ? user!.addresses[0].lng : '',
      ),
    );
    final deliveryPricePerKm = ref.watch(fetchDeliveryPriceProvider);
    final recomendedItems = ref.watch(fetchRecomendedItemsProvider).value ?? [];
    final addressComponents =
        location.value?.results[0].address_components ?? [];
    final address = Address(addressComponents);

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: AppBarTitle(
          city: address.city,
          country: address.country,
          userName: user?.username ?? '',
        ),
        actions: const [AppBarActions()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (advertBanner.isNotEmpty &&
                  advertBanner.first.bannerImage.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          spreadRadius: 0,
                          blurRadius: 6,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    height: 156,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                        'http://localhost:1337${advertBanner.first.bannerImage.first.url}',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              const SizedBox(
                height: 18.0,
              ),
              Text(
                'Recommended for you',
                style: AppFonts.bebasMedium.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 245.0,
                child: recomendedItems.isEmpty
                    ? const Center(child: Text('No recomended products found.'))
                    : ListView.builder(
                        padding: const EdgeInsets.only(
                          right: 20.0,
                          top: 10.0,
                          bottom: 10.0,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: recomendedItems[0]
                            .coffee_shop_categories[0]
                            .coffee_shop_products
                            .length,
                        itemBuilder: (context, index) {
                          final recomendedItem = recomendedItems[0]
                              .coffee_shop_categories[0]
                              .coffee_shop_products[index];

                          return Row(
                            children: [
                              FavouriteProductItemTile(
                                shopProduct: recomendedItem,
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                            ],
                          );
                        },
                      ),
              ),
              const SizedBox(height: 10),
              Text(
                'POPULAR BRAND',
                style: AppFonts.bebasMedium.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 100.0,
                child: brands.isEmpty
                    ? const Center(child: Text('No brands found.'))
                    : ListView.builder(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                        ),
                        scrollDirection: Axis.horizontal,
                        itemCount: brands.length,
                        itemBuilder: (context, index) {
                          final brand = brands[index];
                          final imageUrl = brand.brandImage.url;
                          return PopularBrandCarouselItem(
                            imageSrc: 'http://localhost:1337$imageUrl',
                          );
                        },
                      ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                'COFFEE SHOP',
                style: AppFonts.bebasMedium.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              coffeeShop.isEmpty
                  ? const Center(child: Text('No brands found.'))
                  : ListView.builder(
                      padding: const EdgeInsets.only(right: 20.0),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: coffeeShop.length,
                      itemBuilder: (context, index) {
                        final shop = coffeeShop[index];
                        final distance = ref.watch(
                          FetchDistanceProvider(
                            user?.addresses[0].lat ?? '0',
                            user?.addresses[0].lng ?? '0',
                            shop.latitude,
                            shop.longitude,
                          ),
                        );
                        final deliveryTotalPrice =
                            ((int.parse(distance.value ?? '0') / 1000) *
                                    (deliveryPricePerKm.value ?? 0.0))
                                .toStringAsFixed(2);
                        return GestureDetector(
                          onTap: () {
                            final coffeeShopID = shop.coffeeShopID;

                            context.push('/detail_page/$coffeeShopID');
                          },
                          child: CoffeeShopItemTile(
                            deliveryPrice: deliveryTotalPrice,
                            distance: distance.value ?? '',
                            coffeeShop: shop,
                          ),
                        );
                      },
                    ),
              const SizedBox(
                height: 100.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
