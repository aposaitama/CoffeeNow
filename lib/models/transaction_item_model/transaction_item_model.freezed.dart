// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionItemModel _$TransactionItemModelFromJson(Map<String, dynamic> json) {
  return _TransactionItemModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionItemModel {
  String get orderAssemblyStatus => throw _privateConstructorUsedError;
  String get deliveryStatus => throw _privateConstructorUsedError;
  String get deliveryMethod => throw _privateConstructorUsedError;
  String get paymentOption => throw _privateConstructorUsedError;
  String get orderTotal => throw _privateConstructorUsedError;
  String get destanationAddress => throw _privateConstructorUsedError;
  DateTime get updatedAt =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  List<OrderItemModel> get order_items => throw _privateConstructorUsedError;

  /// Serializes this TransactionItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionItemModelCopyWith<TransactionItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionItemModelCopyWith<$Res> {
  factory $TransactionItemModelCopyWith(TransactionItemModel value,
          $Res Function(TransactionItemModel) then) =
      _$TransactionItemModelCopyWithImpl<$Res, TransactionItemModel>;
  @useResult
  $Res call(
      {String orderAssemblyStatus,
      String deliveryStatus,
      String deliveryMethod,
      String paymentOption,
      String orderTotal,
      String destanationAddress,
      DateTime updatedAt,
      List<OrderItemModel> order_items});
}

/// @nodoc
class _$TransactionItemModelCopyWithImpl<$Res,
        $Val extends TransactionItemModel>
    implements $TransactionItemModelCopyWith<$Res> {
  _$TransactionItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderAssemblyStatus = null,
    Object? deliveryStatus = null,
    Object? deliveryMethod = null,
    Object? paymentOption = null,
    Object? orderTotal = null,
    Object? destanationAddress = null,
    Object? updatedAt = null,
    Object? order_items = null,
  }) {
    return _then(_value.copyWith(
      orderAssemblyStatus: null == orderAssemblyStatus
          ? _value.orderAssemblyStatus
          : orderAssemblyStatus // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryMethod: null == deliveryMethod
          ? _value.deliveryMethod
          : deliveryMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentOption: null == paymentOption
          ? _value.paymentOption
          : paymentOption // ignore: cast_nullable_to_non_nullable
              as String,
      orderTotal: null == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as String,
      destanationAddress: null == destanationAddress
          ? _value.destanationAddress
          : destanationAddress // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      order_items: null == order_items
          ? _value.order_items
          : order_items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionItemModelImplCopyWith<$Res>
    implements $TransactionItemModelCopyWith<$Res> {
  factory _$$TransactionItemModelImplCopyWith(_$TransactionItemModelImpl value,
          $Res Function(_$TransactionItemModelImpl) then) =
      __$$TransactionItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderAssemblyStatus,
      String deliveryStatus,
      String deliveryMethod,
      String paymentOption,
      String orderTotal,
      String destanationAddress,
      DateTime updatedAt,
      List<OrderItemModel> order_items});
}

/// @nodoc
class __$$TransactionItemModelImplCopyWithImpl<$Res>
    extends _$TransactionItemModelCopyWithImpl<$Res, _$TransactionItemModelImpl>
    implements _$$TransactionItemModelImplCopyWith<$Res> {
  __$$TransactionItemModelImplCopyWithImpl(_$TransactionItemModelImpl _value,
      $Res Function(_$TransactionItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderAssemblyStatus = null,
    Object? deliveryStatus = null,
    Object? deliveryMethod = null,
    Object? paymentOption = null,
    Object? orderTotal = null,
    Object? destanationAddress = null,
    Object? updatedAt = null,
    Object? order_items = null,
  }) {
    return _then(_$TransactionItemModelImpl(
      orderAssemblyStatus: null == orderAssemblyStatus
          ? _value.orderAssemblyStatus
          : orderAssemblyStatus // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryMethod: null == deliveryMethod
          ? _value.deliveryMethod
          : deliveryMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentOption: null == paymentOption
          ? _value.paymentOption
          : paymentOption // ignore: cast_nullable_to_non_nullable
              as String,
      orderTotal: null == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as String,
      destanationAddress: null == destanationAddress
          ? _value.destanationAddress
          : destanationAddress // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      order_items: null == order_items
          ? _value._order_items
          : order_items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionItemModelImpl implements _TransactionItemModel {
  const _$TransactionItemModelImpl(
      {required this.orderAssemblyStatus,
      required this.deliveryStatus,
      required this.deliveryMethod,
      required this.paymentOption,
      required this.orderTotal,
      required this.destanationAddress,
      required this.updatedAt,
      required final List<OrderItemModel> order_items})
      : _order_items = order_items;

  factory _$TransactionItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionItemModelImplFromJson(json);

  @override
  final String orderAssemblyStatus;
  @override
  final String deliveryStatus;
  @override
  final String deliveryMethod;
  @override
  final String paymentOption;
  @override
  final String orderTotal;
  @override
  final String destanationAddress;
  @override
  final DateTime updatedAt;
// ignore: non_constant_identifier_names
  final List<OrderItemModel> _order_items;
// ignore: non_constant_identifier_names
  @override
  List<OrderItemModel> get order_items {
    if (_order_items is EqualUnmodifiableListView) return _order_items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_order_items);
  }

  @override
  String toString() {
    return 'TransactionItemModel(orderAssemblyStatus: $orderAssemblyStatus, deliveryStatus: $deliveryStatus, deliveryMethod: $deliveryMethod, paymentOption: $paymentOption, orderTotal: $orderTotal, destanationAddress: $destanationAddress, updatedAt: $updatedAt, order_items: $order_items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionItemModelImpl &&
            (identical(other.orderAssemblyStatus, orderAssemblyStatus) ||
                other.orderAssemblyStatus == orderAssemblyStatus) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.deliveryMethod, deliveryMethod) ||
                other.deliveryMethod == deliveryMethod) &&
            (identical(other.paymentOption, paymentOption) ||
                other.paymentOption == paymentOption) &&
            (identical(other.orderTotal, orderTotal) ||
                other.orderTotal == orderTotal) &&
            (identical(other.destanationAddress, destanationAddress) ||
                other.destanationAddress == destanationAddress) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._order_items, _order_items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderAssemblyStatus,
      deliveryStatus,
      deliveryMethod,
      paymentOption,
      orderTotal,
      destanationAddress,
      updatedAt,
      const DeepCollectionEquality().hash(_order_items));

  /// Create a copy of TransactionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionItemModelImplCopyWith<_$TransactionItemModelImpl>
      get copyWith =>
          __$$TransactionItemModelImplCopyWithImpl<_$TransactionItemModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionItemModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionItemModel implements TransactionItemModel {
  const factory _TransactionItemModel(
          {required final String orderAssemblyStatus,
          required final String deliveryStatus,
          required final String deliveryMethod,
          required final String paymentOption,
          required final String orderTotal,
          required final String destanationAddress,
          required final DateTime updatedAt,
          required final List<OrderItemModel> order_items}) =
      _$TransactionItemModelImpl;

  factory _TransactionItemModel.fromJson(Map<String, dynamic> json) =
      _$TransactionItemModelImpl.fromJson;

  @override
  String get orderAssemblyStatus;
  @override
  String get deliveryStatus;
  @override
  String get deliveryMethod;
  @override
  String get paymentOption;
  @override
  String get orderTotal;
  @override
  String get destanationAddress;
  @override
  DateTime get updatedAt; // ignore: non_constant_identifier_names
  @override
  List<OrderItemModel> get order_items;

  /// Create a copy of TransactionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionItemModelImplCopyWith<_$TransactionItemModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) {
  return _OrderItemModel.fromJson(json);
}

/// @nodoc
mixin _$OrderItemModel {
  String get shopID => throw _privateConstructorUsedError; //
  String get productID => throw _privateConstructorUsedError;
  int get productCount => throw _privateConstructorUsedError;
  Map<String, String> get selectedOptions => throw _privateConstructorUsedError;

  /// Serializes this OrderItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderItemModelCopyWith<OrderItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemModelCopyWith<$Res> {
  factory $OrderItemModelCopyWith(
          OrderItemModel value, $Res Function(OrderItemModel) then) =
      _$OrderItemModelCopyWithImpl<$Res, OrderItemModel>;
  @useResult
  $Res call(
      {String shopID,
      String productID,
      int productCount,
      Map<String, String> selectedOptions});
}

/// @nodoc
class _$OrderItemModelCopyWithImpl<$Res, $Val extends OrderItemModel>
    implements $OrderItemModelCopyWith<$Res> {
  _$OrderItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopID = null,
    Object? productID = null,
    Object? productCount = null,
    Object? selectedOptions = null,
  }) {
    return _then(_value.copyWith(
      shopID: null == shopID
          ? _value.shopID
          : shopID // ignore: cast_nullable_to_non_nullable
              as String,
      productID: null == productID
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as String,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      selectedOptions: null == selectedOptions
          ? _value.selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemModelImplCopyWith<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  factory _$$OrderItemModelImplCopyWith(_$OrderItemModelImpl value,
          $Res Function(_$OrderItemModelImpl) then) =
      __$$OrderItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shopID,
      String productID,
      int productCount,
      Map<String, String> selectedOptions});
}

/// @nodoc
class __$$OrderItemModelImplCopyWithImpl<$Res>
    extends _$OrderItemModelCopyWithImpl<$Res, _$OrderItemModelImpl>
    implements _$$OrderItemModelImplCopyWith<$Res> {
  __$$OrderItemModelImplCopyWithImpl(
      _$OrderItemModelImpl _value, $Res Function(_$OrderItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopID = null,
    Object? productID = null,
    Object? productCount = null,
    Object? selectedOptions = null,
  }) {
    return _then(_$OrderItemModelImpl(
      shopID: null == shopID
          ? _value.shopID
          : shopID // ignore: cast_nullable_to_non_nullable
              as String,
      productID: null == productID
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as String,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      selectedOptions: null == selectedOptions
          ? _value._selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemModelImpl implements _OrderItemModel {
  const _$OrderItemModelImpl(
      {required this.shopID,
      required this.productID,
      required this.productCount,
      required final Map<String, String> selectedOptions})
      : _selectedOptions = selectedOptions;

  factory _$OrderItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemModelImplFromJson(json);

  @override
  final String shopID;
//
  @override
  final String productID;
  @override
  final int productCount;
  final Map<String, String> _selectedOptions;
  @override
  Map<String, String> get selectedOptions {
    if (_selectedOptions is EqualUnmodifiableMapView) return _selectedOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedOptions);
  }

  @override
  String toString() {
    return 'OrderItemModel(shopID: $shopID, productID: $productID, productCount: $productCount, selectedOptions: $selectedOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemModelImpl &&
            (identical(other.shopID, shopID) || other.shopID == shopID) &&
            (identical(other.productID, productID) ||
                other.productID == productID) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            const DeepCollectionEquality()
                .equals(other._selectedOptions, _selectedOptions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, shopID, productID, productCount,
      const DeepCollectionEquality().hash(_selectedOptions));

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemModelImplCopyWith<_$OrderItemModelImpl> get copyWith =>
      __$$OrderItemModelImplCopyWithImpl<_$OrderItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemModelImplToJson(
      this,
    );
  }
}

abstract class _OrderItemModel implements OrderItemModel {
  const factory _OrderItemModel(
          {required final String shopID,
          required final String productID,
          required final int productCount,
          required final Map<String, String> selectedOptions}) =
      _$OrderItemModelImpl;

  factory _OrderItemModel.fromJson(Map<String, dynamic> json) =
      _$OrderItemModelImpl.fromJson;

  @override
  String get shopID; //
  @override
  String get productID;
  @override
  int get productCount;
  @override
  Map<String, String> get selectedOptions;

  /// Create a copy of OrderItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderItemModelImplCopyWith<_$OrderItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
