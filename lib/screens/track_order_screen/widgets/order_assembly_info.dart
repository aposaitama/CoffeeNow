import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class OrderAssemblyInfo extends StatelessWidget {
  final String text;
  const OrderAssemblyInfo({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            height: 100,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context)
                      .colorScheme
                      .onPrimaryContainer
                      .withOpacity(1),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                  offset: const Offset(4.0, 4.0),
                ),
              ],
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                ),
                child: Text(
                  textAlign: TextAlign.center,
                  text,
                  style: AppFonts.bebasMedium.copyWith(
                    fontSize: 30,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ),
            )),
        const SizedBox(
          height: 16.0,
        ),
      ],
    );
  }
}
