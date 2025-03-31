import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/screens/transactions_screen/provider/transactions_provider/transactions_provider.dart';
import 'package:coffee_now/screens/transactions_screen/widgets/transaction_history_item_tile.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionsScreen extends ConsumerWidget {
  const TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider).value;
    final transactionHistory =
        ref.watch(FetchTransactionsProvider(user?.id ?? 0)).value ?? [];

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
      body: transactionHistory.isNotEmpty
          ? SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: transactionHistory.length,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    itemBuilder: (context, index) {
                      final transactionItem = transactionHistory[index];
                      return TransactionHistoryItemTile(
                        ((user?.id ?? 0).toString()),
                        transactionItem: transactionItem,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            )
          : const Center(
              child: Text(
                'You don\'t have transactions',
              ),
            ),
    );
  }
}
