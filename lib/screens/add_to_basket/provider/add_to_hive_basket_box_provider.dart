import 'package:coffee_now/models/basket_item/basket_item_model.dart';
import 'package:coffee_now/models/detailed_product/detailed_product_model.dart';
import 'package:coffee_now/models/hive_models/basket_hive_item_model/basket_hive_item_model.dart';
import 'package:coffee_now/models/hive_models/basket_hive_model.dart/basket_hive_model.dart';
import 'package:coffee_now/models/hive_models/products_instruction_hive_model/products_instruction_hive_model.dart';
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
    } else {
      final newBasket = BasketHiveModel(
        userID: userID,
        basketItem: [BasketItemHiveModel.fromBasketItem(product)],
      );

      box.put(userID, newBasket);
    }
  }
  // void addProductToCart(String userID, BasketItemModel product) {
  //   final box = ref.watch(basketBoxProvider);
  //   final currentBasket = box.get(userID);

  //   if (currentBasket != null) {
  //     final existingItem = currentBasket.basketItem.firstWhere(
  //       (item) =>
  //           item.documentId == product.documentId &&
  //           item.instructions == product.instructions,
  //     );

  //     if (existingItem.productCount != -1) {
  //       existingItem.productCount += 1; // Просто збільшуємо кількість товару
  //     } else {
  //       final basketItemHiveModel = BasketItemHiveModel.fromBasketItem(product);
  //       currentBasket.basketItem.add(basketItemHiveModel);
  //     }

  //     box.put(userID, currentBasket);
  //   } else {
  //     final newBasket = BasketHiveModel(
  //       userID: userID,
  //       basketItem: [BasketItemHiveModel.fromBasketItem(product)],
  //     );

  //     box.put(userID, newBasket);
  //   }
  // }

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
}

// bool _compareInstructions(List<ProductInstructionHiveModel> hiveInstructions,
//     List<ProductInstruction> instructions) {
//   if (hiveInstructions.length != instructions.length) return false;

//   for (int i = 0; i < hiveInstructions.length; i++) {
//     if (hiveInstructions[i].toProductInstruction() != instructions[i]) {
//       return false;
//     }
//   }
//   return true;
// }

// bool _compareInstructions(List<ProductInstructionHiveModel> hiveInstructions,
//     List<ProductInstruction> instructions) {
//   if (hiveInstructions.length != instructions.length) return false;

//   for (int i = 0; i < hiveInstructions.length; i++) {
//
//     if (hiveInstructions[i].toProductInstruction() != instructions[i]) {
//       return false;
//     }
//   }
//   return true;
// }

bool _compareMaps(Map<String, String> map1, Map<String, String> map2) {
  if (map1.length != map2.length) return false;

  for (var key in map1.keys) {
    if (map2[key] != map1[key]) {
      return false;
    }
  }

  return true;
}
