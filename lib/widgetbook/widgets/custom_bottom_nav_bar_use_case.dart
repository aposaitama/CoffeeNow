import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WigetBookCustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int)? onTap;

  const WigetBookCustomBottomNavBar(
      {super.key, this.currentIndex = 1, this.onTap});

  Widget _buildNavItem(
      String activeIcon, String inactiveIcon, int index, int currentIndex) {
    return GestureDetector(
      child: SvgPicture.asset(
        currentIndex == index ? activeIcon : inactiveIcon,
        height: 24,
        width: 24,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 24.0),
      child: Container(
        height: 68,
        padding: const EdgeInsets.only(left: 26.0, right: 26.0),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(50, 29, 11, 1),
          borderRadius: BorderRadius.all(Radius.circular(18.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavItem('lib/assets/icons/Home.svg',
                'lib/assets/icons/Home-1.svg', 0, currentIndex),
            _buildNavItem('lib/assets/icons/Search-1.svg',
                'lib/assets/icons/Search.svg', 1, currentIndex),
            _buildNavItem('lib/assets/icons/Document-1.svg',
                'lib/assets/icons/Document.svg', 2, currentIndex),
            _buildNavItem('lib/assets/icons/Profile-2.svg',
                'lib/assets/icons/Profile-1.svg', 3, currentIndex),
          ],
        ),
      ),
    );
  }
}
