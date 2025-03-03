import 'package:coffee_now/screens/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

class RootScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const RootScreen({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          navigationShell,
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: const CustomBottomNavBar(),
      ),
    );
  }
}
