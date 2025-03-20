import 'package:freezed_annotation/freezed_annotation.dart';

part 'advert_banner_model.freezed.dart';
part 'advert_banner_model.g.dart';

@freezed
class AdvertBannerModel with _$AdvertBannerModel {
  const factory AdvertBannerModel({
    required List<BannerImageData> bannerImage,
  }) = _AdvertBannerModel;

  factory AdvertBannerModel.fromJson(Map<String, dynamic> json) =>
      _$AdvertBannerModelFromJson(json);
}

@freezed
class BannerImageData with _$BannerImageData {
  const factory BannerImageData({
    required String url,
  }) = _BannerImageData;

  factory BannerImageData.fromJson(Map<String, dynamic> json) =>
      _$BannerImageDataFromJson(json);
}
