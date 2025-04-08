// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

import '../detailed_coffee_shop/detailed_coffee_shop_model.dart';

part 'detailed_product_model.freezed.dart';
part 'detailed_product_model.g.dart';

@freezed
class DetailedProductModel with _$DetailedProductModel {
  const factory DetailedProductModel({
    required String documentId,
    required double price,
    required String productName,
    required String productDescription,
    required CoffeeShopImage productImage,
    required bool isInFavourite,
    required List<ProductInstruction> instructions,
  }) = _DetailedProductModel;

  factory DetailedProductModel.fromJson(Map<String, dynamic> json) =>
      _$DetailedProductModelFromJson(json);
}

@freezed
class ProductInstruction with _$ProductInstruction {
  const factory ProductInstruction({
    required String instructionsTitle,
    required List<InstructionsElem>? instructions_elems,
  }) = _ProductInstruction;

  factory ProductInstruction.fromJson(Map<String, dynamic> json) =>
      _$ProductInstructionFromJson(json);
}

@freezed
class InstructionsElem with _$InstructionsElem {
  const factory InstructionsElem({
    required String instructionsName,
  }) = _InstructionsElem;

  factory InstructionsElem.fromJson(Map<String, dynamic> json) =>
      _$InstructionsElemFromJson(json);
}
