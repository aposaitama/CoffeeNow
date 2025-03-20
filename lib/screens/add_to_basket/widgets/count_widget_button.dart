import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountWidgetButton extends StatelessWidget {
  final String imageUrl;

  const CountWidgetButton({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.0,
      height: 36.0,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(
            8.0,
          )),
      child: SvgPicture.asset(
        imageUrl,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
