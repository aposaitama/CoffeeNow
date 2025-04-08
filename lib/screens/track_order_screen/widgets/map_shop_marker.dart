import 'package:coffee_now/models/marker_model/marker_model.dart';
import 'package:coffee_now/screens/profile_screen/settings_screen/provider/theme_provider.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MapShopMarker extends ConsumerWidget {
  final MarkerShopModel markerShopModel;
  final String imageUrl;
  Color? color;

  MapShopMarker(
      {super.key,
      required this.markerShopModel,
      required this.imageUrl,
      this.color});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = markerShopModel.isDarkMode;
    final isCheckedIn = markerShopModel.isCheckedIn;

    final markerColor = isCheckedIn
        ? AppColors.greenColor
        : !isDarkMode
            ? AppColors.brownColor
            : AppColors.orangeColor;

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
