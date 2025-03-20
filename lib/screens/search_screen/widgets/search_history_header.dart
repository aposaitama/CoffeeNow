import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class SearchHistoryHeader extends StatelessWidget {
  final void Function()? onClearAllTap;
  const SearchHistoryHeader({super.key, this.onClearAllTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Recents',
          style: AppFonts.bebasMedium.copyWith(
            fontSize: 18.0,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        GestureDetector(
          onTap: onClearAllTap,
          child: Text(
            'Clear ALL',
            style: AppFonts.bebasMedium.copyWith(
              fontSize: 18.0,
              color: const Color.fromRGBO(47, 219, 188, 1),
            ),
          ),
        ),
      ],
    );
  }
}
