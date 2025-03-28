import 'package:coffee_now/screens/transactions_screen/widgets/transaction_history_item_tile.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

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
