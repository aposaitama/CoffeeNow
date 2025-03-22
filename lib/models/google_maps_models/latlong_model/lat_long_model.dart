import 'package:freezed_annotation/freezed_annotation.dart';

part 'lat_long_model.freezed.dart';
part 'lat_long_model.g.dart';

@freezed
class GeocodeResponse with _$GeocodeResponse {
  const factory GeocodeResponse({
    required List<Result> results,
  }) = _GeocodeResponse;

  factory GeocodeResponse.fromJson(Map<String, dynamic> json) =>
      _$GeocodeResponseFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required Geometry geometry,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Geometry with _$Geometry {
  const factory Geometry({
    required Location location,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required double lat,
    required double lng,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
