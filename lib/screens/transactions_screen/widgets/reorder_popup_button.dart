import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class ReorderPopupButton extends StatelessWidget {
  final String buttonText;

  const ReorderPopupButton({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.0,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(
          buttonText,
          style: AppFonts.poppinsSemiBold.copyWith(
            color: Theme.of(context).colorScheme.onSecondaryContainer,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
