import 'package:coffee_now/models/detailed_coffee_shop/detailed_coffee_shop_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel(
      {required int id,
      required String username,
      required String email,
      required List<UserLocation> addresses,
      required CoffeeShopImage? avatar}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class UserLocation with _$UserLocation {
  const factory UserLocation({
    required String lat,
    required String lng,
  }) = _UserLocation;

  factory UserLocation.fromJson(Map<String, dynamic> json) =>
      _$UserLocationFromJson(json);
}
