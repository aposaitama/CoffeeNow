// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      email: json['email'] as String,
      addresses: (json['addresses'] as List<dynamic>)
          .map((e) => UserLocation.fromJson(e as Map<String, dynamic>))
          .toList(),
      avatar: json['avatar'] == null
          ? null
          : CoffeeShopImage.fromJson(json['avatar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'addresses': instance.addresses,
      'avatar': instance.avatar,
    };

_$UserLocationImpl _$$UserLocationImplFromJson(Map<String, dynamic> json) =>
    _$UserLocationImpl(
      lat: json['lat'] as String,
      lng: json['lng'] as String,
    );

Map<String, dynamic> _$$UserLocationImplToJson(_$UserLocationImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
    };
