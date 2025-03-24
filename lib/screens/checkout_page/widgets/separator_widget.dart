import 'package:flutter/material.dart';

class SeparatorWidget extends StatelessWidget {
  const SeparatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3.0,
      color: Theme.of(context).colorScheme.onPrimaryContainer,
    );
  }
}
