import 'package:coffee_now/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapMarker extends ConsumerWidget {
  final bool isDarkMode;
  final String imageUrl;
  final Color? color;

  const MapMarker(
      {super.key,
      required this.isDarkMode,
      required this.imageUrl,
      this.color});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final markerColor =
        isDarkMode ? AppColors.orangeColor : AppColors.brownColor;

    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: color ?? markerColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: SvgPicture.asset(
        imageUrl,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
