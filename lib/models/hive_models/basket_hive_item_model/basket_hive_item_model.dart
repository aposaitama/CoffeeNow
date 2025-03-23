import 'package:coffee_now/models/detailed_coffee_shop/detailed_coffee_shop_model.dart';
import 'package:coffee_now/models/hive_models/coffee_shop_image_hive_model/coffee_shop_image_hive_model.dart';
import 'package:coffee_now/models/hive_models/products_instruction_hive_model/products_instruction_hive_model.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:coffee_now/models/basket_item/basket_item_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'basket_hive_item_model.g.dart';

@HiveType(typeId: 2)
class BasketItemHiveModel extends Equatable {
  @HiveField(0)
  final String shopID;

  @HiveField(1)
  final String documentId;

  @HiveField(2)
  final double price;

  @HiveField(3)
  final String productName;

  @HiveField(4)
  final String productDescription;

  @HiveField(5)
  final CoffeeShopImageHiveModel productImage;

  @HiveField(6)
  final List<ProductInstructionHiveModel> instructions;

  @HiveField(7)
  final Map<String, String> selectedOptions;

  @HiveField(8)
  int productCount;

  BasketItemHiveModel({
    required this.shopID,
    required this.documentId,
    required this.price,
    required this.productName,
    required this.productDescription,
    required this.productImage,
    required this.instructions,
    required this.selectedOptions,
    required this.productCount,
  });

  factory BasketItemHiveModel.fromBasketItem(BasketItemModel item) {
    return BasketItemHiveModel(
      shopID: item.shopID,
      documentId: item.documentId,
      price: item.price,
      productName: item.productName,
      productDescription: item.productDescription,
      productImage: CoffeeShopImageHiveModel.fromCoffeeShopImage(item
          .productImage), // Перетворюємо CoffeeShopImage на CoffeeShopImageHiveModel
      instructions: item.instructions
          .map((e) => ProductInstructionHiveModel.fromProductInstruction(e))
          .toList(),
      selectedOptions: item.selectedOptions,
      productCount: item.productCount,
    );
  }

  BasketItemModel toBasketItem() {
    return BasketItemModel(
      shopID: shopID,
      documentId: documentId,
      price: price,
      productName: productName,
      productDescription: productDescription,
      productImage: productImage
          .toCoffeeShopImage(), // Перетворюємо CoffeeShopImageHiveModel на CoffeeShopImage
      instructions: instructions.map((e) => e.toProductInstruction()).toList(),
      selectedOptions: selectedOptions,
      productCount: productCount,
    );
  }

  @override
  List<Object?> get props => [
        shopID,
        documentId,
        price,
        productName,
        productDescription,
        productImage,
        instructions,
        selectedOptions,
        productCount,
      ];
}

class CoffeeShopImageConverter
    implements JsonConverter<CoffeeShopImage, Map<String, dynamic>> {
  const CoffeeShopImageConverter();

  @override
  CoffeeShopImage fromJson(Map<String, dynamic> json) {
    return CoffeeShopImage(url: json['url'] as String);
  }

  @override
  Map<String, dynamic> toJson(CoffeeShopImage object) {
    return {'url': object.url};
  }
}
