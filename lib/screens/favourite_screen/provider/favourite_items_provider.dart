import 'package:coffee_now/models/hive_models/favourite_hive_item_model/favourite_hive_item_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favourite_items_provider.g.dart';

// @riverpod
// Future<List<CoffeeShopProducts>> fetchFavoutireItems(Ref ref) async {
//   final apiService = ref.read(apiServiceProvider);
//   try {
//     return await apiService.getFavoutireItems();
//   } catch (e) {
//     throw Exception('Failed to load brands: $e');
//   }
// }

// @riverpod
// Future<void> toogleFavoutireItemStatus(
//   Ref ref,
//   String documentId,
//   bool currentStatus,
// ) async {
//   final apiService = ref.read(apiServiceProvider);
//   try {
//     await apiService.toogleFavoutireItemStatus(
//       documentId,
//       currentStatus,
//     );
//     ref.invalidate(fetchFavoutireItemsProvider);
//     ref.invalidate(fetchRecomendedItemsProvider);
//   } catch (e) {
//     throw Exception('Failed to toogle item: $e');
//   }
// }

@riverpod
Box<FavouriteHiveItemModel> userFavouritesBox(Ref ref) {
  return Hive.box<FavouriteHiveItemModel>('userFavourites');
}

@riverpod
class UserFavourites extends _$UserFavourites {
  @override
  List<String> build(String userID) {
    final box = ref.watch(userFavouritesBoxProvider);
    return box.get(userID)?.items ?? [];
  }

  void toggleFavouriteItem(String userID, String productID) {
    final box = ref.read(userFavouritesBoxProvider);

    final currentFavourites = box.get(userID)?.items ?? [];

    if (currentFavourites.contains(productID)) {
      currentFavourites.remove(productID);
    } else {
      currentFavourites.add(productID);
    }

    box.put(userID,
        FavouriteHiveItemModel(items: currentFavourites, userID: userID));
    state = List.from(currentFavourites);
  }

  bool isFavourite(String userID, String productID) {
    final currentFavourites = state;
    return currentFavourites.contains(productID);
  }
}
