import 'package:coffee_now/screens/transactions_screen/widgets/transaction_history_item_tile.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class TransactionsScreen extends StatelessWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Transactions',
            style: AppFonts.poppinsMedium.copyWith(
              fontSize: 16.0,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          // leading: IconButton(
          //   onPressed: () => context.pop(),
          //   icon: Container(
          //     width: 32.0,
          //     height: 32.0,
          //     decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       color: Colors.black.withOpacity(
          //         0.5,
          //       ),
          //     ),
          //     child: Transform.rotate(
          //         angle: 90 * 3.1415927 / 180,
          //         child: SvgPicture.asset(
          //           fit: BoxFit.scaleDown,
          //           'lib/assets/icons/Arrow - Down 2.svg',
          //           colorFilter: const ColorFilter.mode(
          //             Colors.white,
          //             BlendMode.srcIn,
          //           ),
          //         )),
          //   ),
          // ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                itemBuilder: (context, index) {
                  return const TransactionHistoryItemTile();
                },
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ));
  }
}
