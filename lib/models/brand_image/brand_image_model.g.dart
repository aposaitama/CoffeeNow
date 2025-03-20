// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandImageModelImpl _$$BrandImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandImageModelImpl(
      id: (json['id'] as num).toInt(),
      documentId: json['documentId'] as String,
      brandID: json['brandID'] as String,
      brandImage:
          BrandImageData.fromJson(json['brandImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandImageModelImplToJson(
        _$BrandImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'brandID': instance.brandID,
      'brandImage': instance.brandImage,
    };

_$BrandImageDataImpl _$$BrandImageDataImplFromJson(Map<String, dynamic> json) =>
    _$BrandImageDataImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$BrandImageDataImplToJson(
        _$BrandImageDataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
