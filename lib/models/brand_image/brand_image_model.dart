import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_image_model.freezed.dart';
part 'brand_image_model.g.dart';

@freezed
class BrandImageModel with _$BrandImageModel {
  const factory BrandImageModel({
    required int id,
    required String documentId,
    required String brandID,
    required BrandImageData brandImage,
  }) = _BrandImageModel;

  factory BrandImageModel.fromJson(Map<String, dynamic> json) =>
      _$BrandImageModelFromJson(json);
}

@freezed
class BrandImageData with _$BrandImageData {
  const factory BrandImageData({
    required String url,
  }) = _BrandImageData;

  factory BrandImageData.fromJson(Map<String, dynamic> json) =>
      _$BrandImageDataFromJson(json);
}
