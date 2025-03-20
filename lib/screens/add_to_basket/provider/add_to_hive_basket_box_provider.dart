import 'package:coffee_now/models/basket_item/basket_item_model.dart';
import 'package:coffee_now/models/hive_models/basket_hive_item_model/basket_hive_item_model.dart';
import 'package:coffee_now/models/hive_models/basket_hive_model.dart/basket_hive_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_to_hive_basket_box_provider.g.dart';

@riverpod
Box<BasketHiveModel> basketBox(Ref ref) {
  return Hive.box<BasketHiveModel>('userBasket');
}

@riverpod
class BasketHive extends _$BasketHive {
  @override
  BasketHiveModel? build(String userID) {
    final box = ref.watch(basketBoxProvider);
    return box.get(userID);
  }

  void addProductToCart(String userID, BasketItemModel product) {
    final box = ref.watch(basketBoxProvider);

    final currentBasket = box.get(userID);

    if (currentBasket != null) {
      final basketItemHiveModel = BasketItemHiveModel.fromBasketItem(product);

      currentBasket.basketItem.add(basketItemHiveModel);

      box.put(userID, currentBasket);
    } else {
      final newBasket = BasketHiveModel(
        userID: userID,
        basketItem: [BasketItemHiveModel.fromBasketItem(product)],
      );

      box.put(userID, newBasket);
    }
  }

  void removeProductFromCart(String documentId) {
    final box = ref.watch(basketBoxProvider);
    final currentBasket = box.get(userID);

    if (currentBasket != null) {
      currentBasket.basketItem.removeWhere(
        (item) => item.documentId == documentId,
      );

      box.put(userID, currentBasket);
      ref.notifyListeners();
    }
  }

  void deleteCart(String userID) {
    final box = ref.watch(basketBoxProvider);
    box.delete(userID);
  }
}
