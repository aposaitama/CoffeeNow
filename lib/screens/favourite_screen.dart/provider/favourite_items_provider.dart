import 'package:coffee_now/models/detailed_coffee_shop/detailed_coffee_shop_model.dart';
import 'package:coffee_now/screens/detail_page/provider/detail_page_provider/detail_page_provider.dart';
import 'package:coffee_now/screens/detail_page/provider/full_info_detailed_page_provider.dart';
import 'package:coffee_now/screens/home_screen/providers/recomended_items_provider/recomended_items_provider.dart';
import 'package:coffee_now/sources/api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favourite_items_provider.g.dart';

@riverpod
Future<List<CoffeeShopProducts>> fetchFavoutireItems(Ref ref) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    return await apiService.getFavoutireItems();
  } catch (e) {
    throw Exception('Failed to load brands: $e');
  }
}

@riverpod
Future<void> toogleFavoutireItemStatus(
  Ref ref,
  String documentId,
  bool currentStatus,
) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    await apiService.toogleFavoutireItemStatus(
      documentId,
      currentStatus,
    );
    ref.invalidate(fetchFavoutireItemsProvider);
    ref.invalidate(fetchRecomendedItemsProvider);
  } catch (e) {
    throw Exception('Failed to toogle item: $e');
  }
}
