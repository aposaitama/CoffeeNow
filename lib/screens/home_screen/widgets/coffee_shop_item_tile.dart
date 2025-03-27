import 'package:coffee_now/models/coffee_shop/coffee_shop_model.dart';
import 'package:coffee_now/screens/home_screen/widgets/separated_dot.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeShopItemTile extends StatelessWidget {
  final String deliveryPrice;
  final String distance;
  final CoffeeShopModel coffeeShop;
  const CoffeeShopItemTile(
      {super.key,
      required this.coffeeShop,
      required this.distance,
      required this.deliveryPrice});

  @override
  Widget build(BuildContext context) {
    print(deliveryPrice);
    print(distance);
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: Container(
        height: 88.0,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(
            8.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 0,
              blurRadius: 6,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Image.network(
                  'http://localhost:1337${coffeeShop.image.url}',
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coffeeShop.shopName,
                          style: AppFonts.poppinsMedium.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 13.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            distance.isNotEmpty
                                ? Row(
                                    children: [
                                      SvgPicture.asset(
                                          'lib/assets/icons/Location.svg'),
                                      const SizedBox(
                                        width: 2.0,
                                      ),
                                      Text(
                                        distance.isNotEmpty
                                            ? '${(int.parse(distance) / 1000).toStringAsFixed(1)} km'
                                            : '',
                                        style: AppFonts.poppinsMedium.copyWith(
                                          color: AppColors.greyRegularTextColor,
                                          fontSize: 13.0,
                                        ),
                                      ),
                                      const SeparatedDot(),
                                    ],
                                  )
                                : SizedBox.shrink(),
                            SvgPicture.asset('lib/assets/icons/Star 1.svg'),
                            const SizedBox(
                              width: 2.0,
                            ),
                            Text(
                              '4.5(342)',
                              style: AppFonts.poppinsMedium.copyWith(
                                color: AppColors.greyRegularTextColor,
                                fontSize: 13.0,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            deliveryPrice != '0.00'
                                ? Row(
                                    children: [
                                      SvgPicture.asset(
                                          'lib/assets/icons/Delivery.svg'),
                                      const SizedBox(
                                        width: 2.0,
                                      ),
                                      Text(
                                        '\$$deliveryPrice',
                                        style: AppFonts.poppinsMedium.copyWith(
                                          color: AppColors.greyRegularTextColor,
                                          fontSize: 13.0,
                                        ),
                                      ),
                                      const SeparatedDot(),
                                    ],
                                  )
                                : SizedBox.shrink(),
                            SvgPicture.asset(
                                'lib/assets/icons/Time Circle.svg'),
                            const SizedBox(
                              width: 2.0,
                            ),
                            Text(
                              '${coffeeShop.openTime}- ${coffeeShop.closedTime}',
                              style: AppFonts.poppinsMedium.copyWith(
                                color: AppColors.greyRegularTextColor,
                                fontSize: 13.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
