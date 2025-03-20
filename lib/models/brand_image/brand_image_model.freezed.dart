// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandImageModel _$BrandImageModelFromJson(Map<String, dynamic> json) {
  return _BrandImageModel.fromJson(json);
}

/// @nodoc
mixin _$BrandImageModel {
  int get id => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  String get brandID => throw _privateConstructorUsedError;
  BrandImageData get brandImage => throw _privateConstructorUsedError;

  /// Serializes this BrandImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandImageModelCopyWith<BrandImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandImageModelCopyWith<$Res> {
  factory $BrandImageModelCopyWith(
          BrandImageModel value, $Res Function(BrandImageModel) then) =
      _$BrandImageModelCopyWithImpl<$Res, BrandImageModel>;
  @useResult
  $Res call(
      {int id, String documentId, String brandID, BrandImageData brandImage});

  $BrandImageDataCopyWith<$Res> get brandImage;
}

/// @nodoc
class _$BrandImageModelCopyWithImpl<$Res, $Val extends BrandImageModel>
    implements $BrandImageModelCopyWith<$Res> {
  _$BrandImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? brandID = null,
    Object? brandImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      brandID: null == brandID
          ? _value.brandID
          : brandID // ignore: cast_nullable_to_non_nullable
              as String,
      brandImage: null == brandImage
          ? _value.brandImage
          : brandImage // ignore: cast_nullable_to_non_nullable
              as BrandImageData,
    ) as $Val);
  }

  /// Create a copy of BrandImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BrandImageDataCopyWith<$Res> get brandImage {
    return $BrandImageDataCopyWith<$Res>(_value.brandImage, (value) {
      return _then(_value.copyWith(brandImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrandImageModelImplCopyWith<$Res>
    implements $BrandImageModelCopyWith<$Res> {
  factory _$$BrandImageModelImplCopyWith(_$BrandImageModelImpl value,
          $Res Function(_$BrandImageModelImpl) then) =
      __$$BrandImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String documentId, String brandID, BrandImageData brandImage});

  @override
  $BrandImageDataCopyWith<$Res> get brandImage;
}

/// @nodoc
class __$$BrandImageModelImplCopyWithImpl<$Res>
    extends _$BrandImageModelCopyWithImpl<$Res, _$BrandImageModelImpl>
    implements _$$BrandImageModelImplCopyWith<$Res> {
  __$$BrandImageModelImplCopyWithImpl(
      _$BrandImageModelImpl _value, $Res Function(_$BrandImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? brandID = null,
    Object? brandImage = null,
  }) {
    return _then(_$BrandImageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      brandID: null == brandID
          ? _value.brandID
          : brandID // ignore: cast_nullable_to_non_nullable
              as String,
      brandImage: null == brandImage
          ? _value.brandImage
          : brandImage // ignore: cast_nullable_to_non_nullable
              as BrandImageData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandImageModelImpl implements _BrandImageModel {
  const _$BrandImageModelImpl(
      {required this.id,
      required this.documentId,
      required this.brandID,
      required this.brandImage});

  factory _$BrandImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImageModelImplFromJson(json);

  @override
  final int id;
  @override
  final String documentId;
  @override
  final String brandID;
  @override
  final BrandImageData brandImage;

  @override
  String toString() {
    return 'BrandImageModel(id: $id, documentId: $documentId, brandID: $brandID, brandImage: $brandImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.brandID, brandID) || other.brandID == brandID) &&
            (identical(other.brandImage, brandImage) ||
                other.brandImage == brandImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, documentId, brandID, brandImage);

  /// Create a copy of BrandImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImageModelImplCopyWith<_$BrandImageModelImpl> get copyWith =>
      __$$BrandImageModelImplCopyWithImpl<_$BrandImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandImageModelImplToJson(
      this,
    );
  }
}

abstract class _BrandImageModel implements BrandImageModel {
  const factory _BrandImageModel(
      {required final int id,
      required final String documentId,
      required final String brandID,
      required final BrandImageData brandImage}) = _$BrandImageModelImpl;

  factory _BrandImageModel.fromJson(Map<String, dynamic> json) =
      _$BrandImageModelImpl.fromJson;

  @override
  int get id;
  @override
  String get documentId;
  @override
  String get brandID;
  @override
  BrandImageData get brandImage;

  /// Create a copy of BrandImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandImageModelImplCopyWith<_$BrandImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandImageData _$BrandImageDataFromJson(Map<String, dynamic> json) {
  return _BrandImageData.fromJson(json);
}

/// @nodoc
mixin _$BrandImageData {
  String get url => throw _privateConstructorUsedError;

  /// Serializes this BrandImageData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BrandImageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BrandImageDataCopyWith<BrandImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandImageDataCopyWith<$Res> {
  factory $BrandImageDataCopyWith(
          BrandImageData value, $Res Function(BrandImageData) then) =
      _$BrandImageDataCopyWithImpl<$Res, BrandImageData>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class _$BrandImageDataCopyWithImpl<$Res, $Val extends BrandImageData>
    implements $BrandImageDataCopyWith<$Res> {
  _$BrandImageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandImageData
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
abstract class _$$BrandImageDataImplCopyWith<$Res>
    implements $BrandImageDataCopyWith<$Res> {
  factory _$$BrandImageDataImplCopyWith(_$BrandImageDataImpl value,
          $Res Function(_$BrandImageDataImpl) then) =
      __$$BrandImageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$BrandImageDataImplCopyWithImpl<$Res>
    extends _$BrandImageDataCopyWithImpl<$Res, _$BrandImageDataImpl>
    implements _$$BrandImageDataImplCopyWith<$Res> {
  __$$BrandImageDataImplCopyWithImpl(
      _$BrandImageDataImpl _value, $Res Function(_$BrandImageDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandImageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$BrandImageDataImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandImageDataImpl implements _BrandImageData {
  const _$BrandImageDataImpl({required this.url});

  factory _$BrandImageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImageDataImplFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'BrandImageData(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImageDataImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of BrandImageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImageDataImplCopyWith<_$BrandImageDataImpl> get copyWith =>
      __$$BrandImageDataImplCopyWithImpl<_$BrandImageDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandImageDataImplToJson(
      this,
    );
  }
}

abstract class _BrandImageData implements BrandImageData {
  const factory _BrandImageData({required final String url}) =
      _$BrandImageDataImpl;

  factory _BrandImageData.fromJson(Map<String, dynamic> json) =
      _$BrandImageDataImpl.fromJson;

  @override
  String get url;

  /// Create a copy of BrandImageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BrandImageDataImplCopyWith<_$BrandImageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
