// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'marker_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarkerShopModel _$MarkerShopModelFromJson(Map<String, dynamic> json) {
  return _MarkerShopModel.fromJson(json);
}

/// @nodoc
mixin _$MarkerShopModel {
  bool get isCheckedIn => throw _privateConstructorUsedError;
  bool get isDarkMode => throw _privateConstructorUsedError;

  /// Serializes this MarkerShopModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarkerShopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarkerShopModelCopyWith<MarkerShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkerShopModelCopyWith<$Res> {
  factory $MarkerShopModelCopyWith(
          MarkerShopModel value, $Res Function(MarkerShopModel) then) =
      _$MarkerShopModelCopyWithImpl<$Res, MarkerShopModel>;
  @useResult
  $Res call({bool isCheckedIn, bool isDarkMode});
}

/// @nodoc
class _$MarkerShopModelCopyWithImpl<$Res, $Val extends MarkerShopModel>
    implements $MarkerShopModelCopyWith<$Res> {
  _$MarkerShopModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarkerShopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCheckedIn = null,
    Object? isDarkMode = null,
  }) {
    return _then(_value.copyWith(
      isCheckedIn: null == isCheckedIn
          ? _value.isCheckedIn
          : isCheckedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkerShopModelImplCopyWith<$Res>
    implements $MarkerShopModelCopyWith<$Res> {
  factory _$$MarkerShopModelImplCopyWith(_$MarkerShopModelImpl value,
          $Res Function(_$MarkerShopModelImpl) then) =
      __$$MarkerShopModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isCheckedIn, bool isDarkMode});
}

/// @nodoc
class __$$MarkerShopModelImplCopyWithImpl<$Res>
    extends _$MarkerShopModelCopyWithImpl<$Res, _$MarkerShopModelImpl>
    implements _$$MarkerShopModelImplCopyWith<$Res> {
  __$$MarkerShopModelImplCopyWithImpl(
      _$MarkerShopModelImpl _value, $Res Function(_$MarkerShopModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarkerShopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCheckedIn = null,
    Object? isDarkMode = null,
  }) {
    return _then(_$MarkerShopModelImpl(
      isCheckedIn: null == isCheckedIn
          ? _value.isCheckedIn
          : isCheckedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarkerShopModelImpl implements _MarkerShopModel {
  const _$MarkerShopModelImpl(
      {required this.isCheckedIn, required this.isDarkMode});

  factory _$MarkerShopModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkerShopModelImplFromJson(json);

  @override
  final bool isCheckedIn;
  @override
  final bool isDarkMode;

  @override
  String toString() {
    return 'MarkerShopModel(isCheckedIn: $isCheckedIn, isDarkMode: $isDarkMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkerShopModelImpl &&
            (identical(other.isCheckedIn, isCheckedIn) ||
                other.isCheckedIn == isCheckedIn) &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isCheckedIn, isDarkMode);

  /// Create a copy of MarkerShopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkerShopModelImplCopyWith<_$MarkerShopModelImpl> get copyWith =>
      __$$MarkerShopModelImplCopyWithImpl<_$MarkerShopModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkerShopModelImplToJson(
      this,
    );
  }
}

abstract class _MarkerShopModel implements MarkerShopModel {
  const factory _MarkerShopModel(
      {required final bool isCheckedIn,
      required final bool isDarkMode}) = _$MarkerShopModelImpl;

  factory _MarkerShopModel.fromJson(Map<String, dynamic> json) =
      _$MarkerShopModelImpl.fromJson;

  @override
  bool get isCheckedIn;
  @override
  bool get isDarkMode;

  /// Create a copy of MarkerShopModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkerShopModelImplCopyWith<_$MarkerShopModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
