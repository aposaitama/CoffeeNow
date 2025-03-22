import 'package:coffee_now/models/coffee_shop/coffee_shop_model.dart';
import 'package:coffee_now/screens/home_screen/widgets/separated_dot.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class TopCoffeeShopInfo extends StatelessWidget {
  final String distance;
  final CoffeeShopModel coffeeShop;
  const TopCoffeeShopInfo(
      {super.key, required this.coffeeShop, required this.distance});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 2.5,
          child: Image.network(
            'http://localhost:1337${coffeeShop.detailImage.url}',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 40,
          left: 20,
          right: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
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
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 32.0,
                  height: 32.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(
                      0.5,
                    ),
                  ),
                  child: SvgPicture.asset(
                    fit: BoxFit.scaleDown,
                    'lib/assets/icons/Heart2.svg',
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                coffeeShop.shopName,
                style: AppFonts.poppinsSemiBold.copyWith(
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'lib/assets/icons/Location.svg',
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    distance.isNotEmpty
                        ? '${(int.parse(distance) / 1000).toStringAsFixed(1)} km'
                        : '',
                    style: AppFonts.poppinsMedium.copyWith(
                      color: Colors.white,
                      fontSize: 13.0,
                    ),
                  ),
                  const SeparatedDot(),
                  Text(
                    '342',
                    style: AppFonts.poppinsMedium.copyWith(
                      color: Colors.white,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'lib/assets/icons/Delivery.svg',
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    '\$5.00',
                    style: AppFonts.poppinsMedium.copyWith(
                      color: Colors.white,
                      fontSize: 13.0,
                    ),
                  ),
                  const SeparatedDot(),
                  SvgPicture.asset(
                    'lib/assets/icons/Time Circle.svg',
                    colorFilter: const ColorFilter.mode(
                      Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(
                    width: 2.0,
                  ),
                  Text(
                    '${coffeeShop.openTime}- ${coffeeShop.closedTime}',
                    style: AppFonts.poppinsMedium.copyWith(
                      color: Colors.white,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
