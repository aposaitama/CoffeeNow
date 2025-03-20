// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coffee_shop_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoffeeShopModelImpl _$$CoffeeShopModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CoffeeShopModelImpl(
      coffeeShopID: json['coffeeShopID'] as String,
      shopName: json['shopName'] as String,
      openTime: json['openTime'] as String,
      closedTime: json['closedTime'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      image: CoffeeShopImage.fromJson(json['image'] as Map<String, dynamic>),
      detailImage:
          CoffeeShopImage.fromJson(json['detailImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoffeeShopModelImplToJson(
        _$CoffeeShopModelImpl instance) =>
    <String, dynamic>{
      'coffeeShopID': instance.coffeeShopID,
      'shopName': instance.shopName,
      'openTime': instance.openTime,
      'closedTime': instance.closedTime,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'image': instance.image,
      'detailImage': instance.detailImage,
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
