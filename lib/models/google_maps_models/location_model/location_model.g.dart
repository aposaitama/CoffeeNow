// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationResponseImpl _$$LocationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationResponseImpl(
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LocationResponseImplToJson(
        _$LocationResponseImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      address_components: (json['address_components'] as List<dynamic>)
          .map((e) => AddressComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      formatted_address: json['formatted_address'] as String,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'address_components': instance.address_components,
      'formatted_address': instance.formatted_address,
    };

_$AddressComponentImpl _$$AddressComponentImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressComponentImpl(
      long_name: json['long_name'] as String,
      short_name: json['short_name'] as String,
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AddressComponentImplToJson(
        _$AddressComponentImpl instance) =>
    <String, dynamic>{
      'long_name': instance.long_name,
      'short_name': instance.short_name,
      'types': instance.types,
    };
