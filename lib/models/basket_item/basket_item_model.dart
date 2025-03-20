import 'package:coffee_now/models/detailed_product/detailed_product_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../detailed_coffee_shop/detailed_coffee_shop_model.dart';

part 'basket_item_model.freezed.dart';
part 'basket_item_model.g.dart';

@freezed
class BasketItemModel with _$BasketItemModel {
  const factory BasketItemModel({
    required String shopID,
    required String documentId,
    required int productCount,
    required double price,
    required String productName,
    required String productDescription,
    required CoffeeShopImage productImage,
    required List<ProductInstruction> instructions,
    required Map<String, String> selectedOptions,
  }) = _BasketItemModel;

  factory BasketItemModel.fromJson(Map<String, dynamic> json) =>
      _$BasketItemModelFromJson(json);
}
