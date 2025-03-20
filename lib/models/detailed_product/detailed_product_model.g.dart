// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedProductModelImpl _$$DetailedProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedProductModelImpl(
      documentId: json['documentId'] as String,
      price: (json['price'] as num).toDouble(),
      productName: json['productName'] as String,
      productDescription: json['productDescription'] as String,
      productImage: CoffeeShopImage.fromJson(
          json['productImage'] as Map<String, dynamic>),
      isInFavourite: json['isInFavourite'] as bool,
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => ProductInstruction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailedProductModelImplToJson(
        _$DetailedProductModelImpl instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'price': instance.price,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productImage': instance.productImage,
      'isInFavourite': instance.isInFavourite,
      'instructions': instance.instructions,
    };

_$ProductInstructionImpl _$$ProductInstructionImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductInstructionImpl(
      instructionsTitle: json['instructionsTitle'] as String,
      instructions_elems: (json['instructions_elems'] as List<dynamic>?)
          ?.map((e) => InstructionsElem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductInstructionImplToJson(
        _$ProductInstructionImpl instance) =>
    <String, dynamic>{
      'instructionsTitle': instance.instructionsTitle,
      'instructions_elems': instance.instructions_elems,
    };

_$InstructionsElemImpl _$$InstructionsElemImplFromJson(
        Map<String, dynamic> json) =>
    _$InstructionsElemImpl(
      instructionsName: json['instructionsName'] as String,
    );

Map<String, dynamic> _$$InstructionsElemImplToJson(
        _$InstructionsElemImpl instance) =>
    <String, dynamic>{
      'instructionsName': instance.instructionsName,
    };
