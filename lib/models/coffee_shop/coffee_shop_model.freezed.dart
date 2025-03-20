// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coffee_shop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoffeeShopModel _$CoffeeShopModelFromJson(Map<String, dynamic> json) {
  return _CoffeeShopModel.fromJson(json);
}

/// @nodoc
mixin _$CoffeeShopModel {
  String get coffeeShopID => throw _privateConstructorUsedError;
  String get shopName => throw _privateConstructorUsedError;
  String get openTime => throw _privateConstructorUsedError;
  String get closedTime => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  CoffeeShopImage get image => throw _privateConstructorUsedError;
  CoffeeShopImage get detailImage => throw _privateConstructorUsedError;

  /// Serializes this CoffeeShopModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoffeeShopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoffeeShopModelCopyWith<CoffeeShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeShopModelCopyWith<$Res> {
  factory $CoffeeShopModelCopyWith(
          CoffeeShopModel value, $Res Function(CoffeeShopModel) then) =
      _$CoffeeShopModelCopyWithImpl<$Res, CoffeeShopModel>;
  @useResult
  $Res call(
      {String coffeeShopID,
      String shopName,
      String openTime,
      String closedTime,
      String latitude,
      String longitude,
      CoffeeShopImage image,
      CoffeeShopImage detailImage});

  $CoffeeShopImageCopyWith<$Res> get image;
  $CoffeeShopImageCopyWith<$Res> get detailImage;
}

/// @nodoc
class _$CoffeeShopModelCopyWithImpl<$Res, $Val extends CoffeeShopModel>
    implements $CoffeeShopModelCopyWith<$Res> {
  _$CoffeeShopModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoffeeShopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffeeShopID = null,
    Object? shopName = null,
    Object? openTime = null,
    Object? closedTime = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? image = null,
    Object? detailImage = null,
  }) {
    return _then(_value.copyWith(
      coffeeShopID: null == coffeeShopID
          ? _value.coffeeShopID
          : coffeeShopID // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closedTime: null == closedTime
          ? _value.closedTime
          : closedTime // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as CoffeeShopImage,
      detailImage: null == detailImage
          ? _value.detailImage
          : detailImage // ignore: cast_nullable_to_non_nullable
              as CoffeeShopImage,
    ) as $Val);
  }

  /// Create a copy of CoffeeShopModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoffeeShopImageCopyWith<$Res> get image {
    return $CoffeeShopImageCopyWith<$Res>(_value.image, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }

  /// Create a copy of CoffeeShopModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoffeeShopImageCopyWith<$Res> get detailImage {
    return $CoffeeShopImageCopyWith<$Res>(_value.detailImage, (value) {
      return _then(_value.copyWith(detailImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoffeeShopModelImplCopyWith<$Res>
    implements $CoffeeShopModelCopyWith<$Res> {
  factory _$$CoffeeShopModelImplCopyWith(_$CoffeeShopModelImpl value,
          $Res Function(_$CoffeeShopModelImpl) then) =
      __$$CoffeeShopModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String coffeeShopID,
      String shopName,
      String openTime,
      String closedTime,
      String latitude,
      String longitude,
      CoffeeShopImage image,
      CoffeeShopImage detailImage});

  @override
  $CoffeeShopImageCopyWith<$Res> get image;
  @override
  $CoffeeShopImageCopyWith<$Res> get detailImage;
}

/// @nodoc
class __$$CoffeeShopModelImplCopyWithImpl<$Res>
    extends _$CoffeeShopModelCopyWithImpl<$Res, _$CoffeeShopModelImpl>
    implements _$$CoffeeShopModelImplCopyWith<$Res> {
  __$$CoffeeShopModelImplCopyWithImpl(
      _$CoffeeShopModelImpl _value, $Res Function(_$CoffeeShopModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoffeeShopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffeeShopID = null,
    Object? shopName = null,
    Object? openTime = null,
    Object? closedTime = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? image = null,
    Object? detailImage = null,
  }) {
    return _then(_$CoffeeShopModelImpl(
      coffeeShopID: null == coffeeShopID
          ? _value.coffeeShopID
          : coffeeShopID // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      openTime: null == openTime
          ? _value.openTime
          : openTime // ignore: cast_nullable_to_non_nullable
              as String,
      closedTime: null == closedTime
          ? _value.closedTime
          : closedTime // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as CoffeeShopImage,
      detailImage: null == detailImage
          ? _value.detailImage
          : detailImage // ignore: cast_nullable_to_non_nullable
              as CoffeeShopImage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoffeeShopModelImpl implements _CoffeeShopModel {
  const _$CoffeeShopModelImpl(
      {required this.coffeeShopID,
      required this.shopName,
      required this.openTime,
      required this.closedTime,
      required this.latitude,
      required this.longitude,
      required this.image,
      required this.detailImage});

  factory _$CoffeeShopModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoffeeShopModelImplFromJson(json);

  @override
  final String coffeeShopID;
  @override
  final String shopName;
  @override
  final String openTime;
  @override
  final String closedTime;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final CoffeeShopImage image;
  @override
  final CoffeeShopImage detailImage;

  @override
  String toString() {
    return 'CoffeeShopModel(coffeeShopID: $coffeeShopID, shopName: $shopName, openTime: $openTime, closedTime: $closedTime, latitude: $latitude, longitude: $longitude, image: $image, detailImage: $detailImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoffeeShopModelImpl &&
            (identical(other.coffeeShopID, coffeeShopID) ||
                other.coffeeShopID == coffeeShopID) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.openTime, openTime) ||
                other.openTime == openTime) &&
            (identical(other.closedTime, closedTime) ||
                other.closedTime == closedTime) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.detailImage, detailImage) ||
                other.detailImage == detailImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, coffeeShopID, shopName, openTime,
      closedTime, latitude, longitude, image, detailImage);

  /// Create a copy of CoffeeShopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffeeShopModelImplCopyWith<_$CoffeeShopModelImpl> get copyWith =>
      __$$CoffeeShopModelImplCopyWithImpl<_$CoffeeShopModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoffeeShopModelImplToJson(
      this,
    );
  }
}

abstract class _CoffeeShopModel implements CoffeeShopModel {
  const factory _CoffeeShopModel(
      {required final String coffeeShopID,
      required final String shopName,
      required final String openTime,
      required final String closedTime,
      required final String latitude,
      required final String longitude,
      required final CoffeeShopImage image,
      required final CoffeeShopImage detailImage}) = _$CoffeeShopModelImpl;

  factory _CoffeeShopModel.fromJson(Map<String, dynamic> json) =
      _$CoffeeShopModelImpl.fromJson;

  @override
  String get coffeeShopID;
  @override
  String get shopName;
  @override
  String get openTime;
  @override
  String get closedTime;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  CoffeeShopImage get image;
  @override
  CoffeeShopImage get detailImage;

  /// Create a copy of CoffeeShopModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoffeeShopModelImplCopyWith<_$CoffeeShopModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoffeeShopImage _$CoffeeShopImageFromJson(Map<String, dynamic> json) {
  return _CoffeeShopImage.fromJson(json);
}

/// @nodoc
mixin _$CoffeeShopImage {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this CoffeeShopImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoffeeShopImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoffeeShopImageCopyWith<CoffeeShopImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeShopImageCopyWith<$Res> {
  factory $CoffeeShopImageCopyWith(
          CoffeeShopImage value, $Res Function(CoffeeShopImage) then) =
      _$CoffeeShopImageCopyWithImpl<$Res, CoffeeShopImage>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$CoffeeShopImageCopyWithImpl<$Res, $Val extends CoffeeShopImage>
    implements $CoffeeShopImageCopyWith<$Res> {
  _$CoffeeShopImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoffeeShopImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoffeeShopImageImplCopyWith<$Res>
    implements $CoffeeShopImageCopyWith<$Res> {
  factory _$$CoffeeShopImageImplCopyWith(_$CoffeeShopImageImpl value,
          $Res Function(_$CoffeeShopImageImpl) then) =
      __$$CoffeeShopImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$CoffeeShopImageImplCopyWithImpl<$Res>
    extends _$CoffeeShopImageCopyWithImpl<$Res, _$CoffeeShopImageImpl>
    implements _$$CoffeeShopImageImplCopyWith<$Res> {
  __$$CoffeeShopImageImplCopyWithImpl(
      _$CoffeeShopImageImpl _value, $Res Function(_$CoffeeShopImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoffeeShopImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$CoffeeShopImageImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoffeeShopImageImpl implements _CoffeeShopImage {
  const _$CoffeeShopImageImpl({required this.url});

  factory _$CoffeeShopImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoffeeShopImageImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'CoffeeShopImage(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoffeeShopImageImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of CoffeeShopImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffeeShopImageImplCopyWith<_$CoffeeShopImageImpl> get copyWith =>
      __$$CoffeeShopImageImplCopyWithImpl<_$CoffeeShopImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoffeeShopImageImplToJson(
      this,
    );
  }
}

abstract class _CoffeeShopImage implements CoffeeShopImage {
  const factory _CoffeeShopImage({required final String url}) =
      _$CoffeeShopImageImpl;

  factory _CoffeeShopImage.fromJson(Map<String, dynamic> json) =
      _$CoffeeShopImageImpl.fromJson;

  @override
  String get url;

  /// Create a copy of CoffeeShopImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoffeeShopImageImplCopyWith<_$CoffeeShopImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
