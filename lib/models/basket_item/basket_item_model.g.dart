// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasketItemModelImpl _$$BasketItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BasketItemModelImpl(
      shopID: json['shopID'] as String,
      documentId: json['documentId'] as String,
      productCount: (json['productCount'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      productName: json['productName'] as String,
      productDescription: json['productDescription'] as String,
      productImage: CoffeeShopImage.fromJson(
          json['productImage'] as Map<String, dynamic>),
      instructions: (json['instructions'] as List<dynamic>)
          .map((e) => ProductInstruction.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedOptions: Map<String, String>.from(json['selectedOptions'] as Map),
    );

Map<String, dynamic> _$$BasketItemModelImplToJson(
        _$BasketItemModelImpl instance) =>
    <String, dynamic>{
      'shopID': instance.shopID,
      'documentId': instance.documentId,
      'productCount': instance.productCount,
      'price': instance.price,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productImage': instance.productImage,
      'instructions': instance.instructions,
      'selectedOptions': instance.selectedOptions,
    };
