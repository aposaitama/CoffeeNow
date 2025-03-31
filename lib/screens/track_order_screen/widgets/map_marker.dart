import 'package:coffee_now/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapMarker extends StatelessWidget {
  final bool isDarkMode;
  final String imageUrl;
  const MapMarker({
    super.key,
    required this.isDarkMode,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final markerColor =
        isDarkMode ? AppColors.orangeColor : AppColors.brownColor;

    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: markerColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SvgPicture.asset(
        imageUrl,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
