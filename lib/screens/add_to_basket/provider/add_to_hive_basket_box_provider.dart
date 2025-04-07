import 'package:coffee_now/models/basket_item/basket_item_model.dart';
import 'package:coffee_now/models/detailed_product/detailed_product_model.dart';
import 'package:coffee_now/models/hive_models/basket_hive_item_model/basket_hive_item_model.dart';
import 'package:coffee_now/models/hive_models/basket_hive_model.dart/basket_hive_model.dart';
import 'package:coffee_now/models/hive_models/products_instruction_hive_model/products_instruction_hive_model.dart';
import 'package:coffee_now/screens/checkout_page/provider/grouped_basket_provider/grouped_basket_provider.dart';
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
    var currentBasket = box.get(userID);
    if (currentBasket == null) {
      final newBasket = BasketHiveModel(userID: userID, basketItem: []);
      box.put(userID, newBasket);
      currentBasket = newBasket;
    }

    return currentBasket;
  }

  void addProductToCart(String userID, BasketItemModel product) {
    final box = ref.watch(basketBoxProvider);
    final currentBasket = box.get(userID);

    if (currentBasket != null) {
      final basketItemHiveModel = BasketItemHiveModel.fromBasketItem(product);
      final existingItemIndex = currentBasket.basketItem.indexWhere(
        (item) =>
            item.documentId == product.documentId &&
            _compareMaps(item.selectedOptions, product.selectedOptions),
      );

      if (existingItemIndex != -1) {
        currentBasket.basketItem[existingItemIndex].productCount += 1;
      } else {
        currentBasket.basketItem.add(basketItemHiveModel);
      }

      box.put(userID, currentBasket);
      ref.notifyListeners();
    } else {
      final newBasket = BasketHiveModel(
        userID: userID,
        basketItem: [BasketItemHiveModel.fromBasketItem(product)],
      );

      box.put(userID, newBasket);
      ref.notifyListeners();
    }
  }

  void addListOfProductsToExistingCart(List<BasketItemModel> products) {
    final box = ref.watch(basketBoxProvider);
    final currentBasket = box.get(userID);

    if (currentBasket != null) {
      for (BasketItemModel product in products) {
        final basketItemHiveModel = BasketItemHiveModel.fromBasketItem(product);
        final existingItemIndex = currentBasket.basketItem.indexWhere(
          (item) =>
              item.documentId == product.documentId &&
              _compareMaps(item.selectedOptions, product.selectedOptions),
        );

        if (existingItemIndex != -1) {
          currentBasket.basketItem[existingItemIndex].productCount +=
              product.productCount;
        } else {
          currentBasket.basketItem.add(basketItemHiveModel);
        }
      }
      box.put(userID, currentBasket);
    }
  }

  void updateProduct(
      BasketItemModel updatedProduct, BasketItemModel oldProduct) {
    final box = ref.watch(basketBoxProvider);
    final currentBasket = box.get(userID);

    if (currentBasket != null) {
      final existingItemIndex = currentBasket.basketItem.indexWhere(
        (item) =>
            item.documentId == oldProduct.documentId &&
            _compareMaps(item.selectedOptions, oldProduct.selectedOptions),
      );

      if (existingItemIndex != -1) {
        currentBasket.basketItem.removeAt(existingItemIndex);

        currentBasket.basketItem
            .add(BasketItemHiveModel.fromBasketItem(updatedProduct));

        box.put(userID, currentBasket);
        ref.notifyListeners();
      }
      box.put(userID, currentBasket);

      ref.notifyListeners();
    }
  }

  void addListOfProductsToNewCart(List<BasketItemModel> products) {
    final box = ref.watch(basketBoxProvider);
    final currentBasket = box.get(userID);

    final newBasketItems =
        products.map(BasketItemHiveModel.fromBasketItem).toList();

    if (currentBasket != null) {
      currentBasket.basketItem
        ..clear()
        ..addAll(newBasketItems);

      box.put(userID, currentBasket);
    } else {
      box.put(
        userID,
        BasketHiveModel(
          basketItem: newBasketItems,
          userID: userID,
        ),
      );
    }
  }

  double productCartTotalSumm() {
    final box = ref.watch(basketBoxProvider);
    final currentBasket = box.get(userID);
    if (currentBasket != null) {
      double totalSumm = 0.0;
      for (BasketItemHiveModel item in currentBasket.basketItem) {
        totalSumm += item.productCount * item.price;
      }
      return totalSumm;
    }
    return 0.0;
  }

  void removeProductFromCart(BasketItemHiveModel product) {
    final box = ref.watch(basketBoxProvider);
    final currentBasket = box.get(userID);

    if (currentBasket != null) {
      currentBasket.basketItem.removeWhere(
        (item) =>
            item.documentId == product.documentId &&
            _compareMaps(
              item.selectedOptions,
              product.selectedOptions,
            ),
      );

      box.put(userID, currentBasket);
      ref.notifyListeners();
    }
  }

  void deleteCart(String userID) {
    final box = ref.watch(basketBoxProvider);
    box.delete(userID);
  }

  void clearCart() {
    final box = ref.watch(basketBoxProvider);
    final currentBasket = box.get(userID);

    if (currentBasket != null) {
      currentBasket.basketItem.clear();
      box.put(userID, currentBasket);
      ref.notifyListeners();
    }
  }
}

bool _compareMaps(Map<String, String> map1, Map<String, String> map2) {
  if (map1.length != map2.length) return false;

  for (var key in map1.keys) {
    if (map2[key] != map1[key]) {
      return false;
    }
  }

  return true;
}
