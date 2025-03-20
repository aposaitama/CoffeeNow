// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_coffee_shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedCoffeeShopModelImpl _$$DetailedCoffeeShopModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailedCoffeeShopModelImpl(
      coffeeShopID: json['coffeeShopID'] as String,
      coffee_shop_categories: (json['coffee_shop_categories'] as List<dynamic>)
          .map((e) => CoffeeShopCategories.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailedCoffeeShopModelImplToJson(
        _$DetailedCoffeeShopModelImpl instance) =>
    <String, dynamic>{
      'coffeeShopID': instance.coffeeShopID,
      'coffee_shop_categories': instance.coffee_shop_categories,
    };

_$CoffeeShopImageImpl _$$CoffeeShopImageImplFromJson(
        Map<String, dynamic> json) =>
    _$CoffeeShopImageImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$CoffeeShopImageImplToJson(
        _$CoffeeShopImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$CoffeeShopCategoriesImpl _$$CoffeeShopCategoriesImplFromJson(
        Map<String, dynamic> json) =>
    _$CoffeeShopCategoriesImpl(
      categoryName: json['categoryName'] as String,
      coffee_shop_products: (json['coffee_shop_products'] as List<dynamic>)
          .map((e) => CoffeeShopProducts.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CoffeeShopCategoriesImplToJson(
        _$CoffeeShopCategoriesImpl instance) =>
    <String, dynamic>{
      'categoryName': instance.categoryName,
      'coffee_shop_products': instance.coffee_shop_products,
    };

_$CoffeeShopProductsImpl _$$CoffeeShopProductsImplFromJson(
        Map<String, dynamic> json) =>
    _$CoffeeShopProductsImpl(
      documentId: json['documentId'] as String,
      price: (json['price'] as num).toDouble(),
      productName: json['productName'] as String,
      productDescription: json['productDescription'] as String,
      productImage: CoffeeShopImage.fromJson(
          json['productImage'] as Map<String, dynamic>),
      isInFavourite: json['isInFavourite'] as bool,
    );

Map<String, dynamic> _$$CoffeeShopProductsImplToJson(
        _$CoffeeShopProductsImpl instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'price': instance.price,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productImage': instance.productImage,
      'isInFavourite': instance.isInFavourite,
    };
