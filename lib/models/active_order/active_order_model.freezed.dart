// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActiveOrderModel _$ActiveOrderModelFromJson(Map<String, dynamic> json) {
  return _ActiveOrderModel.fromJson(json);
}

/// @nodoc
mixin _$ActiveOrderModel {
  String get documentId => throw _privateConstructorUsedError;
  String get userID => throw _privateConstructorUsedError;
  String get orderTotal => throw _privateConstructorUsedError;
  OrderAssemblyStatus get orderAssemblyStatus =>
      throw _privateConstructorUsedError;
  DeliveryStatus get deliveryStatus => throw _privateConstructorUsedError;
  DeliveryOrderMethod get deliveryMethod => throw _privateConstructorUsedError;
  PaymentOrderOption get paymentOption => throw _privateConstructorUsedError;
  List<OrderItemModel> get order_items => throw _privateConstructorUsedError;

  /// Serializes this ActiveOrderModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActiveOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActiveOrderModelCopyWith<ActiveOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveOrderModelCopyWith<$Res> {
  factory $ActiveOrderModelCopyWith(
          ActiveOrderModel value, $Res Function(ActiveOrderModel) then) =
      _$ActiveOrderModelCopyWithImpl<$Res, ActiveOrderModel>;
  @useResult
  $Res call(
      {String documentId,
      String userID,
      String orderTotal,
      OrderAssemblyStatus orderAssemblyStatus,
      DeliveryStatus deliveryStatus,
      DeliveryOrderMethod deliveryMethod,
      PaymentOrderOption paymentOption,
      List<OrderItemModel> order_items});
}

/// @nodoc
class _$ActiveOrderModelCopyWithImpl<$Res, $Val extends ActiveOrderModel>
    implements $ActiveOrderModelCopyWith<$Res> {
  _$ActiveOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? userID = null,
    Object? orderTotal = null,
    Object? orderAssemblyStatus = null,
    Object? deliveryStatus = null,
    Object? deliveryMethod = null,
    Object? paymentOption = null,
    Object? order_items = null,
  }) {
    return _then(_value.copyWith(
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      orderTotal: null == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as String,
      orderAssemblyStatus: null == orderAssemblyStatus
          ? _value.orderAssemblyStatus
          : orderAssemblyStatus // ignore: cast_nullable_to_non_nullable
              as OrderAssemblyStatus,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      deliveryMethod: null == deliveryMethod
          ? _value.deliveryMethod
          : deliveryMethod // ignore: cast_nullable_to_non_nullable
              as DeliveryOrderMethod,
      paymentOption: null == paymentOption
          ? _value.paymentOption
          : paymentOption // ignore: cast_nullable_to_non_nullable
              as PaymentOrderOption,
      order_items: null == order_items
          ? _value.order_items
          : order_items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActiveOrderModelImplCopyWith<$Res>
    implements $ActiveOrderModelCopyWith<$Res> {
  factory _$$ActiveOrderModelImplCopyWith(_$ActiveOrderModelImpl value,
          $Res Function(_$ActiveOrderModelImpl) then) =
      __$$ActiveOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String documentId,
      String userID,
      String orderTotal,
      OrderAssemblyStatus orderAssemblyStatus,
      DeliveryStatus deliveryStatus,
      DeliveryOrderMethod deliveryMethod,
      PaymentOrderOption paymentOption,
      List<OrderItemModel> order_items});
}

/// @nodoc
class __$$ActiveOrderModelImplCopyWithImpl<$Res>
    extends _$ActiveOrderModelCopyWithImpl<$Res, _$ActiveOrderModelImpl>
    implements _$$ActiveOrderModelImplCopyWith<$Res> {
  __$$ActiveOrderModelImplCopyWithImpl(_$ActiveOrderModelImpl _value,
      $Res Function(_$ActiveOrderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentId = null,
    Object? userID = null,
    Object? orderTotal = null,
    Object? orderAssemblyStatus = null,
    Object? deliveryStatus = null,
    Object? deliveryMethod = null,
    Object? paymentOption = null,
    Object? order_items = null,
  }) {
    return _then(_$ActiveOrderModelImpl(
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      orderTotal: null == orderTotal
          ? _value.orderTotal
          : orderTotal // ignore: cast_nullable_to_non_nullable
              as String,
      orderAssemblyStatus: null == orderAssemblyStatus
          ? _value.orderAssemblyStatus
          : orderAssemblyStatus // ignore: cast_nullable_to_non_nullable
              as OrderAssemblyStatus,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as DeliveryStatus,
      deliveryMethod: null == deliveryMethod
          ? _value.deliveryMethod
          : deliveryMethod // ignore: cast_nullable_to_non_nullable
              as DeliveryOrderMethod,
      paymentOption: null == paymentOption
          ? _value.paymentOption
          : paymentOption // ignore: cast_nullable_to_non_nullable
              as PaymentOrderOption,
      order_items: null == order_items
          ? _value._order_items
          : order_items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveOrderModelImpl implements _ActiveOrderModel {
  const _$ActiveOrderModelImpl(
      {required this.documentId,
      required this.userID,
      required this.orderTotal,
      required this.orderAssemblyStatus,
      required this.deliveryStatus,
      required this.deliveryMethod,
      required this.paymentOption,
      required final List<OrderItemModel> order_items})
      : _order_items = order_items;

  factory _$ActiveOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveOrderModelImplFromJson(json);

  @override
  final String documentId;
  @override
  final String userID;
  @override
  final String orderTotal;
  @override
  final OrderAssemblyStatus orderAssemblyStatus;
  @override
  final DeliveryStatus deliveryStatus;
  @override
  final DeliveryOrderMethod deliveryMethod;
  @override
  final PaymentOrderOption paymentOption;
  final List<OrderItemModel> _order_items;
  @override
  List<OrderItemModel> get order_items {
    if (_order_items is EqualUnmodifiableListView) return _order_items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_order_items);
  }

  @override
  String toString() {
    return 'ActiveOrderModel(documentId: $documentId, userID: $userID, orderTotal: $orderTotal, orderAssemblyStatus: $orderAssemblyStatus, deliveryStatus: $deliveryStatus, deliveryMethod: $deliveryMethod, paymentOption: $paymentOption, order_items: $order_items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveOrderModelImpl &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.orderTotal, orderTotal) ||
                other.orderTotal == orderTotal) &&
            (identical(other.orderAssemblyStatus, orderAssemblyStatus) ||
                other.orderAssemblyStatus == orderAssemblyStatus) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.deliveryMethod, deliveryMethod) ||
                other.deliveryMethod == deliveryMethod) &&
            (identical(other.paymentOption, paymentOption) ||
                other.paymentOption == paymentOption) &&
            const DeepCollectionEquality()
                .equals(other._order_items, _order_items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      documentId,
      userID,
      orderTotal,
      orderAssemblyStatus,
      deliveryStatus,
      deliveryMethod,
      paymentOption,
      const DeepCollectionEquality().hash(_order_items));

  /// Create a copy of ActiveOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActiveOrderModelImplCopyWith<_$ActiveOrderModelImpl> get copyWith =>
      __$$ActiveOrderModelImplCopyWithImpl<_$ActiveOrderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActiveOrderModelImplToJson(
      this,
    );
  }
}

abstract class _ActiveOrderModel implements ActiveOrderModel {
  const factory _ActiveOrderModel(
          {required final String documentId,
          required final String userID,
          required final String orderTotal,
          required final OrderAssemblyStatus orderAssemblyStatus,
          required final DeliveryStatus deliveryStatus,
          required final DeliveryOrderMethod deliveryMethod,
          required final PaymentOrderOption paymentOption,
          required final List<OrderItemModel> order_items}) =
      _$ActiveOrderModelImpl;

  factory _ActiveOrderModel.fromJson(Map<String, dynamic> json) =
      _$ActiveOrderModelImpl.fromJson;

  @override
  String get documentId;
  @override
  String get userID;
  @override
  String get orderTotal;
  @override
  OrderAssemblyStatus get orderAssemblyStatus;
  @override
  DeliveryStatus get deliveryStatus;
  @override
  DeliveryOrderMethod get deliveryMethod;
  @override
  PaymentOrderOption get paymentOption;
  @override
  List<OrderItemModel> get order_items;

  /// Create a copy of ActiveOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveOrderModelImplCopyWith<_$ActiveOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) {
  return _OrderItemModel.fromJson(json);
}

/// @nodoc
mixin _$OrderItemModel {
  String get shopID => throw _privateConstructorUsedError;
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
  String get shopID;
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
