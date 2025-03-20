import 'package:coffee_now/screens/add_to_basket/provider/add_to_hive_basket_box_provider.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/screens/widgets/custom_bottom_nav_bar.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:go_router/go_router.dart';

class RootScreen extends ConsumerWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final StatefulNavigationShell navigationShell;
  const RootScreen({
    super.key,
    required this.navigationShell,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider).value;
    final basketModel = ref.watch(
      BasketHiveProvider(
        user?.id.toString() ?? '',
      ),
    );

    return Scaffold(
      key: scaffoldKey,

      floatingActionButton: basketModel?.basketItem.isEmpty ?? true
          ? null
          : Padding(
              padding: const EdgeInsets.only(right: 5.0, bottom: 52),
              child: GestureDetector(
                onTap: () => context.push('/my_basket'),
                child: Stack(alignment: Alignment.topRight, children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Theme.of(context).colorScheme.primaryContainer,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        )
                      ],
                    ),
                    child: SvgPicture.asset(
                      fit: BoxFit.scaleDown,
                      'lib/assets/icons/Basket_big.svg',
                      colorFilter: ColorFilter.mode(
                        Theme.of(context).colorScheme.secondaryContainer,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 4.0,
                      top: 4.0,
                    ),
                    child: Container(
                      width: 15.0,
                      height: 15.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.orangeColor,
                      ),
                      child: Center(
                          child: Text(
                        basketModel?.basketItem.length.toString() ?? '0',
                        style: AppFonts.poppinsSemiBold.copyWith(
                          color: Colors.white,
                          fontSize: 11.0,
                        ),
                      )),
                    ),
                  )
                ]),
              ),
            ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          navigationShell,
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const CustomBottomNavBar(),
          ),
        ],
      ),
      // bottomNavigationBar: ClipRRect(
      //   borderRadius: BorderRadius.circular(20),
      //   child: const CustomBottomNavBar(),
      // ),
    );
  }
}
