import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_coffee_shop_model.freezed.dart';
part 'detailed_coffee_shop_model.g.dart';

@freezed
class DetailedCoffeeShopModel with _$DetailedCoffeeShopModel {
  const factory DetailedCoffeeShopModel({
    required String coffeeShopID,
    required List<CoffeeShopCategories> coffee_shop_categories,
  }) = _DetailedCoffeeShopModel;

  factory DetailedCoffeeShopModel.fromJson(Map<String, dynamic> json) =>
      _$DetailedCoffeeShopModelFromJson(json);
}

@freezed
class CoffeeShopImage with _$CoffeeShopImage {
  const factory CoffeeShopImage({
    required String url,
  }) = _CoffeeShopImage;

  factory CoffeeShopImage.fromJson(Map<String, dynamic> json) =>
      _$CoffeeShopImageFromJson(json);
}

@freezed
class CoffeeShopCategories with _$CoffeeShopCategories {
  const factory CoffeeShopCategories({
    required String categoryName,
    required List<CoffeeShopProducts> coffee_shop_products,
  }) = _CoffeeShopCategories;

  factory CoffeeShopCategories.fromJson(Map<String, dynamic> json) =>
      _$CoffeeShopCategoriesFromJson(json);
}

@freezed
class CoffeeShopProducts with _$CoffeeShopProducts {
  const factory CoffeeShopProducts({
    required String documentId,
    required double price,
    required String productName,
    required String productDescription,
    required CoffeeShopImage productImage,
    required bool isInFavourite,
  }) = _CoffeeShopProducts;

  factory CoffeeShopProducts.fromJson(Map<String, dynamic> json) =>
      _$CoffeeShopProductsFromJson(json);
}



// @freezed
// class CoffeeShopCategories with _$CoffeeShopCategories {
//   const factory CoffeeShopCategories({
//     required String url,
//   }) = _CoffeeShopCategories;

//   factory CoffeeShopCategories.fromJson(Map<String, dynamic> json) =>
//       _$CoffeeShopCategoriesFromJson(json);
// }
