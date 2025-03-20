// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_coffee_shop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailedCoffeeShopModel _$DetailedCoffeeShopModelFromJson(
    Map<String, dynamic> json) {
  return _DetailedCoffeeShopModel.fromJson(json);
}

/// @nodoc
mixin _$DetailedCoffeeShopModel {
  String get coffeeShopID => throw _privateConstructorUsedError;
  List<CoffeeShopCategories> get coffee_shop_categories =>
      throw _privateConstructorUsedError;

  /// Serializes this DetailedCoffeeShopModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailedCoffeeShopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailedCoffeeShopModelCopyWith<DetailedCoffeeShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedCoffeeShopModelCopyWith<$Res> {
  factory $DetailedCoffeeShopModelCopyWith(DetailedCoffeeShopModel value,
          $Res Function(DetailedCoffeeShopModel) then) =
      _$DetailedCoffeeShopModelCopyWithImpl<$Res, DetailedCoffeeShopModel>;
  @useResult
  $Res call(
      {String coffeeShopID, List<CoffeeShopCategories> coffee_shop_categories});
}

/// @nodoc
class _$DetailedCoffeeShopModelCopyWithImpl<$Res,
        $Val extends DetailedCoffeeShopModel>
    implements $DetailedCoffeeShopModelCopyWith<$Res> {
  _$DetailedCoffeeShopModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailedCoffeeShopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffeeShopID = null,
    Object? coffee_shop_categories = null,
  }) {
    return _then(_value.copyWith(
      coffeeShopID: null == coffeeShopID
          ? _value.coffeeShopID
          : coffeeShopID // ignore: cast_nullable_to_non_nullable
              as String,
      coffee_shop_categories: null == coffee_shop_categories
          ? _value.coffee_shop_categories
          : coffee_shop_categories // ignore: cast_nullable_to_non_nullable
              as List<CoffeeShopCategories>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedCoffeeShopModelImplCopyWith<$Res>
    implements $DetailedCoffeeShopModelCopyWith<$Res> {
  factory _$$DetailedCoffeeShopModelImplCopyWith(
          _$DetailedCoffeeShopModelImpl value,
          $Res Function(_$DetailedCoffeeShopModelImpl) then) =
      __$$DetailedCoffeeShopModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String coffeeShopID, List<CoffeeShopCategories> coffee_shop_categories});
}

/// @nodoc
class __$$DetailedCoffeeShopModelImplCopyWithImpl<$Res>
    extends _$DetailedCoffeeShopModelCopyWithImpl<$Res,
        _$DetailedCoffeeShopModelImpl>
    implements _$$DetailedCoffeeShopModelImplCopyWith<$Res> {
  __$$DetailedCoffeeShopModelImplCopyWithImpl(
      _$DetailedCoffeeShopModelImpl _value,
      $Res Function(_$DetailedCoffeeShopModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailedCoffeeShopModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffeeShopID = null,
    Object? coffee_shop_categories = null,
  }) {
    return _then(_$DetailedCoffeeShopModelImpl(
      coffeeShopID: null == coffeeShopID
          ? _value.coffeeShopID
          : coffeeShopID // ignore: cast_nullable_to_non_nullable
              as String,
      coffee_shop_categories: null == coffee_shop_categories
          ? _value._coffee_shop_categories
          : coffee_shop_categories // ignore: cast_nullable_to_non_nullable
              as List<CoffeeShopCategories>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailedCoffeeShopModelImpl implements _DetailedCoffeeShopModel {
  const _$DetailedCoffeeShopModelImpl(
      {required this.coffeeShopID,
      required final List<CoffeeShopCategories> coffee_shop_categories})
      : _coffee_shop_categories = coffee_shop_categories;

  factory _$DetailedCoffeeShopModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailedCoffeeShopModelImplFromJson(json);

  @override
  final String coffeeShopID;
  final List<CoffeeShopCategories> _coffee_shop_categories;
  @override
  List<CoffeeShopCategories> get coffee_shop_categories {
    if (_coffee_shop_categories is EqualUnmodifiableListView)
      return _coffee_shop_categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coffee_shop_categories);
  }

  @override
  String toString() {
    return 'DetailedCoffeeShopModel(coffeeShopID: $coffeeShopID, coffee_shop_categories: $coffee_shop_categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedCoffeeShopModelImpl &&
            (identical(other.coffeeShopID, coffeeShopID) ||
                other.coffeeShopID == coffeeShopID) &&
            const DeepCollectionEquality().equals(
                other._coffee_shop_categories, _coffee_shop_categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, coffeeShopID,
      const DeepCollectionEquality().hash(_coffee_shop_categories));

  /// Create a copy of DetailedCoffeeShopModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedCoffeeShopModelImplCopyWith<_$DetailedCoffeeShopModelImpl>
      get copyWith => __$$DetailedCoffeeShopModelImplCopyWithImpl<
          _$DetailedCoffeeShopModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailedCoffeeShopModelImplToJson(
      this,
    );
  }
}

abstract class _DetailedCoffeeShopModel implements DetailedCoffeeShopModel {
  const factory _DetailedCoffeeShopModel(
          {required final String coffeeShopID,
          required final List<CoffeeShopCategories> coffee_shop_categories}) =
      _$DetailedCoffeeShopModelImpl;

  factory _DetailedCoffeeShopModel.fromJson(Map<String, dynamic> json) =
      _$DetailedCoffeeShopModelImpl.fromJson;

  @override
  String get coffeeShopID;
  @override
  List<CoffeeShopCategories> get coffee_shop_categories;

  /// Create a copy of DetailedCoffeeShopModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailedCoffeeShopModelImplCopyWith<_$DetailedCoffeeShopModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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

CoffeeShopCategories _$CoffeeShopCategoriesFromJson(Map<String, dynamic> json) {
  return _CoffeeShopCategories.fromJson(json);
}

/// @nodoc
mixin _$CoffeeShopCategories {
  String get categoryName => throw _privateConstructorUsedError;
  List<CoffeeShopProducts> get coffee_shop_products =>
      throw _privateConstructorUsedError;

  /// Serializes this CoffeeShopCategories to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoffeeShopCategories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoffeeShopCategoriesCopyWith<CoffeeShopCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeShopCategoriesCopyWith<$Res> {
  factory $CoffeeShopCategoriesCopyWith(CoffeeShopCategories value,
          $Res Function(CoffeeShopCategories) then) =
      _$CoffeeShopCategoriesCopyWithImpl<$Res, CoffeeShopCategories>;
  @useResult
  $Res call(
      {String categoryName, List<CoffeeShopProducts> coffee_shop_products});
}

/// @nodoc
class _$CoffeeShopCategoriesCopyWithImpl<$Res,
        $Val extends CoffeeShopCategories>
    implements $CoffeeShopCategoriesCopyWith<$Res> {
  _$CoffeeShopCategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoffeeShopCategories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? coffee_shop_products = null,
  }) {
    return _then(_value.copyWith(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      coffee_shop_products: null == coffee_shop_products
          ? _value.coffee_shop_products
          : coffee_shop_products // ignore: cast_nullable_to_non_nullable
              as List<CoffeeShopProducts>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoffeeShopCategoriesImplCopyWith<$Res>
    implements $CoffeeShopCategoriesCopyWith<$Res> {
  factory _$$CoffeeShopCategoriesImplCopyWith(_$CoffeeShopCategoriesImpl value,
          $Res Function(_$CoffeeShopCategoriesImpl) then) =
      __$$CoffeeShopCategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String categoryName, List<CoffeeShopProducts> coffee_shop_products});
}

/// @nodoc
class __$$CoffeeShopCategoriesImplCopyWithImpl<$Res>
    extends _$CoffeeShopCategoriesCopyWithImpl<$Res, _$CoffeeShopCategoriesImpl>
    implements _$$CoffeeShopCategoriesImplCopyWith<$Res> {
  __$$CoffeeShopCategoriesImplCopyWithImpl(_$CoffeeShopCategoriesImpl _value,
      $Res Function(_$CoffeeShopCategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoffeeShopCategories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? coffee_shop_products = null,
  }) {
    return _then(_$CoffeeShopCategoriesImpl(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      coffee_shop_products: null == coffee_shop_products
          ? _value._coffee_shop_products
          : coffee_shop_products // ignore: cast_nullable_to_non_nullable
              as List<CoffeeShopProducts>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoffeeShopCategoriesImpl implements _CoffeeShopCategories {
  const _$CoffeeShopCategoriesImpl(
      {required this.categoryName,
      required final List<CoffeeShopProducts> coffee_shop_products})
      : _coffee_shop_products = coffee_shop_products;

  factory _$CoffeeShopCategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoffeeShopCategoriesImplFromJson(json);

  @override
  final String categoryName;
  final List<CoffeeShopProducts> _coffee_shop_products;
  @override
  List<CoffeeShopProducts> get coffee_shop_products {
    if (_coffee_shop_products is EqualUnmodifiableListView)
      return _coffee_shop_products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coffee_shop_products);
  }

  @override
  String toString() {
    return 'CoffeeShopCategories(categoryName: $categoryName, coffee_shop_products: $coffee_shop_products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoffeeShopCategoriesImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            const DeepCollectionEquality()
                .equals(other._coffee_shop_products, _coffee_shop_products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, categoryName,
      const DeepCollectionEquality().hash(_coffee_shop_products));

  /// Create a copy of CoffeeShopCategories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffeeShopCategoriesImplCopyWith<_$CoffeeShopCategoriesImpl>
      get copyWith =>
          __$$CoffeeShopCategoriesImplCopyWithImpl<_$CoffeeShopCategoriesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoffeeShopCategoriesImplToJson(
      this,
    );
  }
}

abstract class _CoffeeShopCategories implements CoffeeShopCategories {
  const factory _CoffeeShopCategories(
          {required final String categoryName,
          required final List<CoffeeShopProducts> coffee_shop_products}) =
      _$CoffeeShopCategoriesImpl;

  factory _CoffeeShopCategories.fromJson(Map<String, dynamic> json) =
      _$CoffeeShopCategoriesImpl.fromJson;

  @override
  String get categoryName;
  @override
  List<CoffeeShopProducts> get coffee_shop_products;

  /// Create a copy of CoffeeShopCategories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoffeeShopCategoriesImplCopyWith<_$CoffeeShopCategoriesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoffeeShopProducts _$CoffeeShopProductsFromJson(Map<String, dynamic> json) {
  return _CoffeeShopProducts.fromJson(json);
}

/// @nodoc
mixin _$CoffeeShopProducts {
  String get documentId => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productDescription => throw _privateConstructorUsedError;
  CoffeeShopImage get productImage => throw _privateConstructorUsedError;
  bool get isInFavourite => throw _privateConstructorUsedError;

  /// Serializes this CoffeeShopProducts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoffeeShopProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoffeeShopProductsCopyWith<CoffeeShopProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeShopProductsCopyWith<$Res> {
  factory $CoffeeShopProductsCopyWith(
          CoffeeShopProducts value, $Res Function(CoffeeShopProducts) then) =
      _$CoffeeShopProductsCopyWithImpl<$Res, CoffeeShopProducts>;
  @useResult
  $Res call(
      {String documentId,
      double price,
      String productName,
      String productDescription,
      CoffeeShopImage productImage,
      bool isInFavourite});

  $CoffeeShopImageCopyWith<$Res> get productImage;
}

/// @nodoc
class _$CoffeeShopProductsCopyWithImpl<$Res, $Val extends CoffeeShopProducts>
    implements $CoffeeShopProductsCopyWith<$Res> {
  _$CoffeeShopProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoffeeShopProducts
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
    ) as $Val);
  }

  /// Create a copy of CoffeeShopProducts
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
abstract class _$$CoffeeShopProductsImplCopyWith<$Res>
    implements $CoffeeShopProductsCopyWith<$Res> {
  factory _$$CoffeeShopProductsImplCopyWith(_$CoffeeShopProductsImpl value,
          $Res Function(_$CoffeeShopProductsImpl) then) =
      __$$CoffeeShopProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String documentId,
      double price,
      String productName,
      String productDescription,
      CoffeeShopImage productImage,
      bool isInFavourite});

  @override
  $CoffeeShopImageCopyWith<$Res> get productImage;
}

/// @nodoc
class __$$CoffeeShopProductsImplCopyWithImpl<$Res>
    extends _$CoffeeShopProductsCopyWithImpl<$Res, _$CoffeeShopProductsImpl>
    implements _$$CoffeeShopProductsImplCopyWith<$Res> {
  __$$CoffeeShopProductsImplCopyWithImpl(_$CoffeeShopProductsImpl _value,
      $Res Function(_$CoffeeShopProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoffeeShopProducts
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
  }) {
    return _then(_$CoffeeShopProductsImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoffeeShopProductsImpl implements _CoffeeShopProducts {
  const _$CoffeeShopProductsImpl(
      {required this.documentId,
      required this.price,
      required this.productName,
      required this.productDescription,
      required this.productImage,
      required this.isInFavourite});

  factory _$CoffeeShopProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoffeeShopProductsImplFromJson(json);

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

  @override
  String toString() {
    return 'CoffeeShopProducts(documentId: $documentId, price: $price, productName: $productName, productDescription: $productDescription, productImage: $productImage, isInFavourite: $isInFavourite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoffeeShopProductsImpl &&
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
                other.isInFavourite == isInFavourite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, documentId, price, productName,
      productDescription, productImage, isInFavourite);

  /// Create a copy of CoffeeShopProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoffeeShopProductsImplCopyWith<_$CoffeeShopProductsImpl> get copyWith =>
      __$$CoffeeShopProductsImplCopyWithImpl<_$CoffeeShopProductsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoffeeShopProductsImplToJson(
      this,
    );
  }
}

abstract class _CoffeeShopProducts implements CoffeeShopProducts {
  const factory _CoffeeShopProducts(
      {required final String documentId,
      required final double price,
      required final String productName,
      required final String productDescription,
      required final CoffeeShopImage productImage,
      required final bool isInFavourite}) = _$CoffeeShopProductsImpl;

  factory _CoffeeShopProducts.fromJson(Map<String, dynamic> json) =
      _$CoffeeShopProductsImpl.fromJson;

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

  /// Create a copy of CoffeeShopProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoffeeShopProductsImplCopyWith<_$CoffeeShopProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
