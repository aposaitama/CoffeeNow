// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasketItemModel _$BasketItemModelFromJson(Map<String, dynamic> json) {
  return _BasketItemModel.fromJson(json);
}

/// @nodoc
mixin _$BasketItemModel {
  String get shopID => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  int get productCount => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productDescription => throw _privateConstructorUsedError;
  CoffeeShopImage get productImage => throw _privateConstructorUsedError;
  List<ProductInstruction> get instructions =>
      throw _privateConstructorUsedError;
  Map<String, String> get selectedOptions => throw _privateConstructorUsedError;

  /// Serializes this BasketItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BasketItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasketItemModelCopyWith<BasketItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketItemModelCopyWith<$Res> {
  factory $BasketItemModelCopyWith(
          BasketItemModel value, $Res Function(BasketItemModel) then) =
      _$BasketItemModelCopyWithImpl<$Res, BasketItemModel>;
  @useResult
  $Res call(
      {String shopID,
      String documentId,
      int productCount,
      double price,
      String productName,
      String productDescription,
      CoffeeShopImage productImage,
      List<ProductInstruction> instructions,
      Map<String, String> selectedOptions});

  $CoffeeShopImageCopyWith<$Res> get productImage;
}

/// @nodoc
class _$BasketItemModelCopyWithImpl<$Res, $Val extends BasketItemModel>
    implements $BasketItemModelCopyWith<$Res> {
  _$BasketItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasketItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopID = null,
    Object? documentId = null,
    Object? productCount = null,
    Object? price = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? productImage = null,
    Object? instructions = null,
    Object? selectedOptions = null,
  }) {
    return _then(_value.copyWith(
      shopID: null == shopID
          ? _value.shopID
          : shopID // ignore: cast_nullable_to_non_nullable
              as String,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      instructions: null == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<ProductInstruction>,
      selectedOptions: null == selectedOptions
          ? _value.selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }

  /// Create a copy of BasketItemModel
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
abstract class _$$BasketItemModelImplCopyWith<$Res>
    implements $BasketItemModelCopyWith<$Res> {
  factory _$$BasketItemModelImplCopyWith(_$BasketItemModelImpl value,
          $Res Function(_$BasketItemModelImpl) then) =
      __$$BasketItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shopID,
      String documentId,
      int productCount,
      double price,
      String productName,
      String productDescription,
      CoffeeShopImage productImage,
      List<ProductInstruction> instructions,
      Map<String, String> selectedOptions});

  @override
  $CoffeeShopImageCopyWith<$Res> get productImage;
}

/// @nodoc
class __$$BasketItemModelImplCopyWithImpl<$Res>
    extends _$BasketItemModelCopyWithImpl<$Res, _$BasketItemModelImpl>
    implements _$$BasketItemModelImplCopyWith<$Res> {
  __$$BasketItemModelImplCopyWithImpl(
      _$BasketItemModelImpl _value, $Res Function(_$BasketItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasketItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopID = null,
    Object? documentId = null,
    Object? productCount = null,
    Object? price = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? productImage = null,
    Object? instructions = null,
    Object? selectedOptions = null,
  }) {
    return _then(_$BasketItemModelImpl(
      shopID: null == shopID
          ? _value.shopID
          : shopID // ignore: cast_nullable_to_non_nullable
              as String,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
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
      instructions: null == instructions
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<ProductInstruction>,
      selectedOptions: null == selectedOptions
          ? _value._selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketItemModelImpl implements _BasketItemModel {
  const _$BasketItemModelImpl(
      {required this.shopID,
      required this.documentId,
      required this.productCount,
      required this.price,
      required this.productName,
      required this.productDescription,
      required this.productImage,
      required final List<ProductInstruction> instructions,
      required final Map<String, String> selectedOptions})
      : _instructions = instructions,
        _selectedOptions = selectedOptions;

  factory _$BasketItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketItemModelImplFromJson(json);

  @override
  final String shopID;
  @override
  final String documentId;
  @override
  final int productCount;
  @override
  final double price;
  @override
  final String productName;
  @override
  final String productDescription;
  @override
  final CoffeeShopImage productImage;
  final List<ProductInstruction> _instructions;
  @override
  List<ProductInstruction> get instructions {
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  final Map<String, String> _selectedOptions;
  @override
  Map<String, String> get selectedOptions {
    if (_selectedOptions is EqualUnmodifiableMapView) return _selectedOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedOptions);
  }

  @override
  String toString() {
    return 'BasketItemModel(shopID: $shopID, documentId: $documentId, productCount: $productCount, price: $price, productName: $productName, productDescription: $productDescription, productImage: $productImage, instructions: $instructions, selectedOptions: $selectedOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketItemModelImpl &&
            (identical(other.shopID, shopID) || other.shopID == shopID) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions) &&
            const DeepCollectionEquality()
                .equals(other._selectedOptions, _selectedOptions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      shopID,
      documentId,
      productCount,
      price,
      productName,
      productDescription,
      productImage,
      const DeepCollectionEquality().hash(_instructions),
      const DeepCollectionEquality().hash(_selectedOptions));

  /// Create a copy of BasketItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketItemModelImplCopyWith<_$BasketItemModelImpl> get copyWith =>
      __$$BasketItemModelImplCopyWithImpl<_$BasketItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketItemModelImplToJson(
      this,
    );
  }
}

abstract class _BasketItemModel implements BasketItemModel {
  const factory _BasketItemModel(
          {required final String shopID,
          required final String documentId,
          required final int productCount,
          required final double price,
          required final String productName,
          required final String productDescription,
          required final CoffeeShopImage productImage,
          required final List<ProductInstruction> instructions,
          required final Map<String, String> selectedOptions}) =
      _$BasketItemModelImpl;

  factory _BasketItemModel.fromJson(Map<String, dynamic> json) =
      _$BasketItemModelImpl.fromJson;

  @override
  String get shopID;
  @override
  String get documentId;
  @override
  int get productCount;
  @override
  double get price;
  @override
  String get productName;
  @override
  String get productDescription;
  @override
  CoffeeShopImage get productImage;
  @override
  List<ProductInstruction> get instructions;
  @override
  Map<String, String> get selectedOptions;

  /// Create a copy of BasketItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasketItemModelImplCopyWith<_$BasketItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
