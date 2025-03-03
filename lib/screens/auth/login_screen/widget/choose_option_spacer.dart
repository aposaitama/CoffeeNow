import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class ChooseOptionSpacer extends StatelessWidget {
  const ChooseOptionSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    double containerSize = (MediaQuery.of(context).size.width - 110) / 2;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: 1.0,
          width: containerSize,
          color: const Color.fromRGBO(210, 210, 210, 1),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'OR',
            style: AppFonts.poppinsMedium,
          ),
        ),
        Container(
          height: 1.0,
          width: containerSize,
          color: const Color.fromRGBO(210, 210, 210, 1),
        ),
      ],
    );
  }
}
