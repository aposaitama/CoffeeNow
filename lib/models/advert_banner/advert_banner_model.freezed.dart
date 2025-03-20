// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advert_banner_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdvertBannerModel _$AdvertBannerModelFromJson(Map<String, dynamic> json) {
  return _AdvertBannerModel.fromJson(json);
}

/// @nodoc
mixin _$AdvertBannerModel {
  List<BannerImageData> get bannerImage => throw _privateConstructorUsedError;

  /// Serializes this AdvertBannerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdvertBannerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdvertBannerModelCopyWith<AdvertBannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertBannerModelCopyWith<$Res> {
  factory $AdvertBannerModelCopyWith(
          AdvertBannerModel value, $Res Function(AdvertBannerModel) then) =
      _$AdvertBannerModelCopyWithImpl<$Res, AdvertBannerModel>;
  @useResult
  $Res call({List<BannerImageData> bannerImage});
}

/// @nodoc
class _$AdvertBannerModelCopyWithImpl<$Res, $Val extends AdvertBannerModel>
    implements $AdvertBannerModelCopyWith<$Res> {
  _$AdvertBannerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvertBannerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerImage = null,
  }) {
    return _then(_value.copyWith(
      bannerImage: null == bannerImage
          ? _value.bannerImage
          : bannerImage // ignore: cast_nullable_to_non_nullable
              as List<BannerImageData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdvertBannerModelImplCopyWith<$Res>
    implements $AdvertBannerModelCopyWith<$Res> {
  factory _$$AdvertBannerModelImplCopyWith(_$AdvertBannerModelImpl value,
          $Res Function(_$AdvertBannerModelImpl) then) =
      __$$AdvertBannerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BannerImageData> bannerImage});
}

/// @nodoc
class __$$AdvertBannerModelImplCopyWithImpl<$Res>
    extends _$AdvertBannerModelCopyWithImpl<$Res, _$AdvertBannerModelImpl>
    implements _$$AdvertBannerModelImplCopyWith<$Res> {
  __$$AdvertBannerModelImplCopyWithImpl(_$AdvertBannerModelImpl _value,
      $Res Function(_$AdvertBannerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdvertBannerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerImage = null,
  }) {
    return _then(_$AdvertBannerModelImpl(
      bannerImage: null == bannerImage
          ? _value._bannerImage
          : bannerImage // ignore: cast_nullable_to_non_nullable
              as List<BannerImageData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdvertBannerModelImpl implements _AdvertBannerModel {
  const _$AdvertBannerModelImpl(
      {required final List<BannerImageData> bannerImage})
      : _bannerImage = bannerImage;

  factory _$AdvertBannerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdvertBannerModelImplFromJson(json);

  final List<BannerImageData> _bannerImage;
  @override
  List<BannerImageData> get bannerImage {
    if (_bannerImage is EqualUnmodifiableListView) return _bannerImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bannerImage);
  }

  @override
  String toString() {
    return 'AdvertBannerModel(bannerImage: $bannerImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertBannerModelImpl &&
            const DeepCollectionEquality()
                .equals(other._bannerImage, _bannerImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_bannerImage));

  /// Create a copy of AdvertBannerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertBannerModelImplCopyWith<_$AdvertBannerModelImpl> get copyWith =>
      __$$AdvertBannerModelImplCopyWithImpl<_$AdvertBannerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdvertBannerModelImplToJson(
      this,
    );
  }
}

abstract class _AdvertBannerModel implements AdvertBannerModel {
  const factory _AdvertBannerModel(
          {required final List<BannerImageData> bannerImage}) =
      _$AdvertBannerModelImpl;

  factory _AdvertBannerModel.fromJson(Map<String, dynamic> json) =
      _$AdvertBannerModelImpl.fromJson;

  @override
  List<BannerImageData> get bannerImage;

  /// Create a copy of AdvertBannerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvertBannerModelImplCopyWith<_$AdvertBannerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerImageData _$BannerImageDataFromJson(Map<String, dynamic> json) {
  return _BannerImageData.fromJson(json);
}

/// @nodoc
mixin _$BannerImageData {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this BannerImageData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerImageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerImageDataCopyWith<BannerImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerImageDataCopyWith<$Res> {
  factory $BannerImageDataCopyWith(
          BannerImageData value, $Res Function(BannerImageData) then) =
      _$BannerImageDataCopyWithImpl<$Res, BannerImageData>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$BannerImageDataCopyWithImpl<$Res, $Val extends BannerImageData>
    implements $BannerImageDataCopyWith<$Res> {
  _$BannerImageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerImageData
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
abstract class _$$BannerImageDataImplCopyWith<$Res>
    implements $BannerImageDataCopyWith<$Res> {
  factory _$$BannerImageDataImplCopyWith(_$BannerImageDataImpl value,
          $Res Function(_$BannerImageDataImpl) then) =
      __$$BannerImageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$BannerImageDataImplCopyWithImpl<$Res>
    extends _$BannerImageDataCopyWithImpl<$Res, _$BannerImageDataImpl>
    implements _$$BannerImageDataImplCopyWith<$Res> {
  __$$BannerImageDataImplCopyWithImpl(
      _$BannerImageDataImpl _value, $Res Function(_$BannerImageDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerImageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$BannerImageDataImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerImageDataImpl implements _BannerImageData {
  const _$BannerImageDataImpl({required this.url});

  factory _$BannerImageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerImageDataImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'BannerImageData(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerImageDataImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of BannerImageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerImageDataImplCopyWith<_$BannerImageDataImpl> get copyWith =>
      __$$BannerImageDataImplCopyWithImpl<_$BannerImageDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerImageDataImplToJson(
      this,
    );
  }
}

abstract class _BannerImageData implements BannerImageData {
  const factory _BannerImageData({required final String url}) =
      _$BannerImageDataImpl;

  factory _BannerImageData.fromJson(Map<String, dynamic> json) =
      _$BannerImageDataImpl.fromJson;

  @override
  String get url;

  /// Create a copy of BannerImageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerImageDataImplCopyWith<_$BannerImageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
