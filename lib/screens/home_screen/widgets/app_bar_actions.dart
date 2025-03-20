import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20.0,
      ),
      child: Row(
        children: [
          Container(
            width: 28.0,
            height: 28.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                6.0,
              ),
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: SvgPicture.asset(
              fit: BoxFit.scaleDown,
              'lib/assets/icons/Ticket.svg',
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          IconButton(
            onPressed: () => context.go('/favourite_page'),
            icon: Container(
              width: 28.0,
              height: 28.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  6.0,
                ),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: SvgPicture.asset(
                fit: BoxFit.scaleDown,
                'lib/assets/icons/Heart2.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
