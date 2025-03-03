import 'package:flutter/material.dart';

class LoginViaService extends StatelessWidget {
  final String assetName;
  const LoginViaService({super.key, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 80.0,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(
            20.0,
          ),
          border: Border.all(
            width: 1.0,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context)
                  .colorScheme
                  .onPrimaryContainer
                  .withOpacity(0.3),
              blurRadius: 15.0,
              spreadRadius: 2.0,
              offset: const Offset(2.0, 2.0),
            ),
          ]),
      child: Center(
        child: Image.asset(
          assetName,
          width: 42.0,
          height: 42.0,
        ),
      ),
    );
  }
}
