import 'package:freezed_annotation/freezed_annotation.dart';
part 'marker_model.g.dart';
part 'marker_model.freezed.dart';

@freezed
class MarkerShopModel with _$MarkerShopModel {
  const factory MarkerShopModel({
    required bool isCheckedIn,
    required bool isDarkMode,
  }) = _MarkerShopModel;

  factory MarkerShopModel.fromJson(Map<String, dynamic> json) =>
      _$MarkerShopModelFromJson(json);
}
