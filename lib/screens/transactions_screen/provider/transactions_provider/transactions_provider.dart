import 'package:coffee_now/models/transaction_item_model/transaction_item_model.dart';

import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'transactions_provider.g.dart';

@riverpod
Future<List<TransactionItemModel>> fetchTransactions(
  Ref ref,
  int userID,
) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    final response = await apiService.getTransactions(
      userID,
    );
    return response;
  } catch (e) {
    return [];
  }
}
