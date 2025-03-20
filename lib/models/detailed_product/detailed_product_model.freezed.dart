// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailedProductModel _$DetailedProductModelFromJson(Map<String, dynamic> json) {
  return _DetailedProductModel.fromJson(json);
}

/// @nodoc
mixin _$DetailedProductModel {
  String get documentId => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productDescription => throw _privateConstructorUsedError;
  CoffeeShopImage get productImage => throw _privateConstructorUsedError;
  bool get isInFavourite => throw _privateConstructorUsedError;
  List<ProductInstruction> get instructions =>
      throw _privateConstructorUsedError;

  /// Serializes this DetailedProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailedProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailedProductModelCopyWith<DetailedProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedProductModelCopyWith<$Res> {
  factory $DetailedProductModelCopyWith(DetailedProductModel value,
          $Res Function(DetailedProductModel) then) =
      _$DetailedProductModelCopyWithImpl<$Res, DetailedProductModel>;
  @useResult
  $Res call(
      {String documentId,
      double price,
      String productName,
      String productDescription,
      CoffeeShopImage productImage,
      bool isInFavourite,
      List<ProductInstruction> instructions});

  $CoffeeShopImageCopyWith<$Res> get productImage;
}

/// @nodoc
class _$DetailedProductModelCopyWithImpl<$Res,
        $Val extends DetailedProductModel>
    implements $DetailedProductModelCopyWith<$Res> {
  _$DetailedProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailedProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? price = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? productImage = null,
    Object? isInFavourite = null,
    Object? instructions = null,
  }) {
    return _then(_value.copyWith(
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as CoffeeShopImage,
      isInFavourite: null == isInFavourite
          ? _value.isInFavourite
          : isInFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<ProductInstruction>,
    ) as $Val);
  }

  /// Create a copy of DetailedProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoffeeShopImageCopyWith<$Res> get productImage {
    return $CoffeeShopImageCopyWith<$Res>(_value.productImage, (value) {
      return _then(_value.copyWith(productImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailedProductModelImplCopyWith<$Res>
    implements $DetailedProductModelCopyWith<$Res> {
  factory _$$DetailedProductModelImplCopyWith(_$DetailedProductModelImpl value,
          $Res Function(_$DetailedProductModelImpl) then) =
      __$$DetailedProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String documentId,
      double price,
      String productName,
      String productDescription,
      CoffeeShopImage productImage,
      bool isInFavourite,
      List<ProductInstruction> instructions});

  @override
  $CoffeeShopImageCopyWith<$Res> get productImage;
}

/// @nodoc
class __$$DetailedProductModelImplCopyWithImpl<$Res>
    extends _$DetailedProductModelCopyWithImpl<$Res, _$DetailedProductModelImpl>
    implements _$$DetailedProductModelImplCopyWith<$Res> {
  __$$DetailedProductModelImplCopyWithImpl(_$DetailedProductModelImpl _value,
      $Res Function(_$DetailedProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailedProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? price = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? productImage = null,
    Object? isInFavourite = null,
    Object? instructions = null,
  }) {
    return _then(_$DetailedProductModelImpl(
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as CoffeeShopImage,
      isInFavourite: null == isInFavourite
          ? _value.isInFavourite
          : isInFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
      instructions: null == instructions
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<ProductInstruction>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailedProductModelImpl implements _DetailedProductModel {
  const _$DetailedProductModelImpl(
      {required this.documentId,
      required this.price,
      required this.productName,
      required this.productDescription,
      required this.productImage,
      required this.isInFavourite,
      required final List<ProductInstruction> instructions})
      : _instructions = instructions;

  factory _$DetailedProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedProductModelImplFromJson(json);

  @override
  final String documentId;
  @override
  final double price;
  @override
  final String productName;
  @override
  final String productDescription;
  @override
  final CoffeeShopImage productImage;
  @override
  final bool isInFavourite;
  final List<ProductInstruction> _instructions;
  @override
  List<ProductInstruction> get instructions {
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  @override
  String toString() {
    return 'DetailedProductModel(documentId: $documentId, price: $price, productName: $productName, productDescription: $productDescription, productImage: $productImage, isInFavourite: $isInFavourite, instructions: $instructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedProductModelImpl &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.isInFavourite, isInFavourite) ||
                other.isInFavourite == isInFavourite) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      documentId,
      price,
      productName,
      productDescription,
      productImage,
      isInFavourite,
      const DeepCollectionEquality().hash(_instructions));

  /// Create a copy of DetailedProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedProductModelImplCopyWith<_$DetailedProductModelImpl>
      get copyWith =>
          __$$DetailedProductModelImplCopyWithImpl<_$DetailedProductModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedProductModelImplToJson(
      this,
    );
  }
}

abstract class _DetailedProductModel implements DetailedProductModel {
  const factory _DetailedProductModel(
          {required final String documentId,
          required final double price,
          required final String productName,
          required final String productDescription,
          required final CoffeeShopImage productImage,
          required final bool isInFavourite,
          required final List<ProductInstruction> instructions}) =
      _$DetailedProductModelImpl;

  factory _DetailedProductModel.fromJson(Map<String, dynamic> json) =
      _$DetailedProductModelImpl.fromJson;

  @override
  String get documentId;
  @override
  double get price;
  @override
  String get productName;
  @override
  String get productDescription;
  @override
  CoffeeShopImage get productImage;
  @override
  bool get isInFavourite;
  @override
  List<ProductInstruction> get instructions;

  /// Create a copy of DetailedProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailedProductModelImplCopyWith<_$DetailedProductModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductInstruction _$ProductInstructionFromJson(Map<String, dynamic> json) {
  return _ProductInstruction.fromJson(json);
}

/// @nodoc
mixin _$ProductInstruction {
  String get instructionsTitle => throw _privateConstructorUsedError;
  List<InstructionsElem>? get instructions_elems =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductInstruction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductInstructionCopyWith<ProductInstruction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductInstructionCopyWith<$Res> {
  factory $ProductInstructionCopyWith(
          ProductInstruction value, $Res Function(ProductInstruction) then) =
      _$ProductInstructionCopyWithImpl<$Res, ProductInstruction>;
  @useResult
  $Res call(
      {String instructionsTitle, List<InstructionsElem>? instructions_elems});
}

/// @nodoc
class _$ProductInstructionCopyWithImpl<$Res, $Val extends ProductInstruction>
    implements $ProductInstructionCopyWith<$Res> {
  _$ProductInstructionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instructionsTitle = null,
    Object? instructions_elems = freezed,
  }) {
    return _then(_value.copyWith(
      instructionsTitle: null == instructionsTitle
          ? _value.instructionsTitle
          : instructionsTitle // ignore: cast_nullable_to_non_nullable
              as String,
      instructions_elems: freezed == instructions_elems
          ? _value.instructions_elems
          : instructions_elems // ignore: cast_nullable_to_non_nullable
              as List<InstructionsElem>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductInstructionImplCopyWith<$Res>
    implements $ProductInstructionCopyWith<$Res> {
  factory _$$ProductInstructionImplCopyWith(_$ProductInstructionImpl value,
          $Res Function(_$ProductInstructionImpl) then) =
      __$$ProductInstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String instructionsTitle, List<InstructionsElem>? instructions_elems});
}

/// @nodoc
class __$$ProductInstructionImplCopyWithImpl<$Res>
    extends _$ProductInstructionCopyWithImpl<$Res, _$ProductInstructionImpl>
    implements _$$ProductInstructionImplCopyWith<$Res> {
  __$$ProductInstructionImplCopyWithImpl(_$ProductInstructionImpl _value,
      $Res Function(_$ProductInstructionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instructionsTitle = null,
    Object? instructions_elems = freezed,
  }) {
    return _then(_$ProductInstructionImpl(
      instructionsTitle: null == instructionsTitle
          ? _value.instructionsTitle
          : instructionsTitle // ignore: cast_nullable_to_non_nullable
              as String,
      instructions_elems: freezed == instructions_elems
          ? _value._instructions_elems
          : instructions_elems // ignore: cast_nullable_to_non_nullable
              as List<InstructionsElem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductInstructionImpl implements _ProductInstruction {
  const _$ProductInstructionImpl(
      {required this.instructionsTitle,
      required final List<InstructionsElem>? instructions_elems})
      : _instructions_elems = instructions_elems;

  factory _$ProductInstructionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductInstructionImplFromJson(json);

  @override
  final String instructionsTitle;
  final List<InstructionsElem>? _instructions_elems;
  @override
  List<InstructionsElem>? get instructions_elems {
    final value = _instructions_elems;
    if (value == null) return null;
    if (_instructions_elems is EqualUnmodifiableListView)
      return _instructions_elems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductInstruction(instructionsTitle: $instructionsTitle, instructions_elems: $instructions_elems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductInstructionImpl &&
            (identical(other.instructionsTitle, instructionsTitle) ||
                other.instructionsTitle == instructionsTitle) &&
            const DeepCollectionEquality()
                .equals(other._instructions_elems, _instructions_elems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, instructionsTitle,
      const DeepCollectionEquality().hash(_instructions_elems));

  /// Create a copy of ProductInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductInstructionImplCopyWith<_$ProductInstructionImpl> get copyWith =>
      __$$ProductInstructionImplCopyWithImpl<_$ProductInstructionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductInstructionImplToJson(
      this,
    );
  }
}

abstract class _ProductInstruction implements ProductInstruction {
  const factory _ProductInstruction(
          {required final String instructionsTitle,
          required final List<InstructionsElem>? instructions_elems}) =
      _$ProductInstructionImpl;

  factory _ProductInstruction.fromJson(Map<String, dynamic> json) =
      _$ProductInstructionImpl.fromJson;

  @override
  String get instructionsTitle;
  @override
  List<InstructionsElem>? get instructions_elems;

  /// Create a copy of ProductInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductInstructionImplCopyWith<_$ProductInstructionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InstructionsElem _$InstructionsElemFromJson(Map<String, dynamic> json) {
  return _InstructionsElem.fromJson(json);
}

/// @nodoc
mixin _$InstructionsElem {
  String get instructionsName => throw _privateConstructorUsedError;

  /// Serializes this InstructionsElem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InstructionsElem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InstructionsElemCopyWith<InstructionsElem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstructionsElemCopyWith<$Res> {
  factory $InstructionsElemCopyWith(
          InstructionsElem value, $Res Function(InstructionsElem) then) =
      _$InstructionsElemCopyWithImpl<$Res, InstructionsElem>;
  @useResult
  $Res call({String instructionsName});
}

/// @nodoc
class _$InstructionsElemCopyWithImpl<$Res, $Val extends InstructionsElem>
    implements $InstructionsElemCopyWith<$Res> {
  _$InstructionsElemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InstructionsElem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instructionsName = null,
  }) {
    return _then(_value.copyWith(
      instructionsName: null == instructionsName
          ? _value.instructionsName
          : instructionsName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InstructionsElemImplCopyWith<$Res>
    implements $InstructionsElemCopyWith<$Res> {
  factory _$$InstructionsElemImplCopyWith(_$InstructionsElemImpl value,
          $Res Function(_$InstructionsElemImpl) then) =
      __$$InstructionsElemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String instructionsName});
}

/// @nodoc
class __$$InstructionsElemImplCopyWithImpl<$Res>
    extends _$InstructionsElemCopyWithImpl<$Res, _$InstructionsElemImpl>
    implements _$$InstructionsElemImplCopyWith<$Res> {
  __$$InstructionsElemImplCopyWithImpl(_$InstructionsElemImpl _value,
      $Res Function(_$InstructionsElemImpl) _then)
      : super(_value, _then);

  /// Create a copy of InstructionsElem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? instructionsName = null,
  }) {
    return _then(_$InstructionsElemImpl(
      instructionsName: null == instructionsName
          ? _value.instructionsName
          : instructionsName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InstructionsElemImpl implements _InstructionsElem {
  const _$InstructionsElemImpl({required this.instructionsName});

  factory _$InstructionsElemImpl.fromJson(Map<String, dynamic> json) =>
      _$$InstructionsElemImplFromJson(json);

  @override
  final String instructionsName;

  @override
  String toString() {
    return 'InstructionsElem(instructionsName: $instructionsName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InstructionsElemImpl &&
            (identical(other.instructionsName, instructionsName) ||
                other.instructionsName == instructionsName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, instructionsName);

  /// Create a copy of InstructionsElem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InstructionsElemImplCopyWith<_$InstructionsElemImpl> get copyWith =>
      __$$InstructionsElemImplCopyWithImpl<_$InstructionsElemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InstructionsElemImplToJson(
      this,
    );
  }
}

abstract class _InstructionsElem implements InstructionsElem {
  const factory _InstructionsElem({required final String instructionsName}) =
      _$InstructionsElemImpl;

  factory _InstructionsElem.fromJson(Map<String, dynamic> json) =
      _$InstructionsElemImpl.fromJson;

  @override
  String get instructionsName;

  /// Create a copy of InstructionsElem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InstructionsElemImplCopyWith<_$InstructionsElemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
