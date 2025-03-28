import 'package:coffee_now/models/coffee_shop/coffee_shop_model.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/screens/home_screen/widgets/separated_dot.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ConcreteProductTop extends ConsumerWidget {
  final String productImage;
  final bool isInFavourite;
  final void Function()? onHeartTap;
  const ConcreteProductTop({
    super.key,
    required this.productImage,
    required this.isInFavourite,
    required this.onHeartTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 2.5,
          child: Image.network(
            'http://localhost:1337$productImage',
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
                onTap: onHeartTap,
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
                    isInFavourite
                        ? 'lib/assets/icons/FilledHeart.svg'
                        : 'lib/assets/icons/Heart.svg',
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
      ],
    );
  }
}
