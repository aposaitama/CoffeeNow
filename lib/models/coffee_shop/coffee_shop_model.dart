import 'package:freezed_annotation/freezed_annotation.dart';

part 'coffee_shop_model.freezed.dart';
part 'coffee_shop_model.g.dart';

@freezed
class CoffeeShopModel with _$CoffeeShopModel {
  const factory CoffeeShopModel({
    required String coffeeShopID,
    required String shopName,
    required String openTime,
    required String closedTime,
    required String latitude,
    required String longitude,
    required CoffeeShopImage image,
    required CoffeeShopImage detailImage,

    // required String email,
    // required String email,
    // required String email,
    // required String email,
    // required String email,
    // required String email,
    // required String email,
    // required String email,
    // required String email,
  }) = _CoffeeShopModel;

  factory CoffeeShopModel.fromJson(Map<String, dynamic> json) =>
      _$CoffeeShopModelFromJson(json);
}

@freezed
class CoffeeShopImage with _$CoffeeShopImage {
  const factory CoffeeShopImage({
    required String url,
  }) = _CoffeeShopImage;

  factory CoffeeShopImage.fromJson(Map<String, dynamic> json) =>
      _$CoffeeShopImageFromJson(json);
}


// @freezed
// class CoffeeShopCategories with _$CoffeeShopCategories {
//   const factory CoffeeShopCategories({
//     required String url,
//   }) = _CoffeeShopCategories;

//   factory CoffeeShopCategories.fromJson(Map<String, dynamic> json) =>
//       _$CoffeeShopCategoriesFromJson(json);
// }
