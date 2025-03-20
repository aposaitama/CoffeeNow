// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advert_banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvertBannerModelImpl _$$AdvertBannerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvertBannerModelImpl(
      bannerImage: (json['bannerImage'] as List<dynamic>)
          .map((e) => BannerImageData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AdvertBannerModelImplToJson(
        _$AdvertBannerModelImpl instance) =>
    <String, dynamic>{
      'bannerImage': instance.bannerImage,
    };

_$BannerImageDataImpl _$$BannerImageDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BannerImageDataImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$BannerImageDataImplToJson(
        _$BannerImageDataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
