import 'package:flutter/material.dart';

class PopularBrandCarouselItem extends StatelessWidget {
  final String imageSrc;
  const PopularBrandCarouselItem({super.key, required this.imageSrc});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(
              20.0,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                spreadRadius: 0,
                blurRadius: 6,
                offset: const Offset(0, 4),
              )
            ]),
        child: Image.network(
          imageSrc,
          color: isDarkMode ? Colors.white : null,
        ),
      ),
    );
  }
}
