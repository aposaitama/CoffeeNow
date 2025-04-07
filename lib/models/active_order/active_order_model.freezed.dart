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
  int get id => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  String get userID => throw _privateConstructorUsedError;
  String get orderTotal => throw _privateConstructorUsedError;
  OrderAssemblyStatus get orderAssemblyStatus =>
      throw _privateConstructorUsedError;
  DeliveryStatus get deliveryStatus => throw _privateConstructorUsedError;
  DeliveryOrderMethod get deliveryMethod => throw _privateConstructorUsedError;
  PaymentOrderOption get paymentOption => throw _privateConstructorUsedError;
  List<OrderItemModel> get order_items => throw _privateConstructorUsedError;
  CourierModel? get courier => throw _privateConstructorUsedError;
  List<CheckInCoffeeShopsModel>? get check_in_coffee_shops =>
      throw _privateConstructorUsedError;

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
      {int id,
      String documentId,
      String userID,
      String orderTotal,
      OrderAssemblyStatus orderAssemblyStatus,
      DeliveryStatus deliveryStatus,
      DeliveryOrderMethod deliveryMethod,
      PaymentOrderOption paymentOption,
      List<OrderItemModel> order_items,
      CourierModel? courier,
      List<CheckInCoffeeShopsModel>? check_in_coffee_shops});

  $CourierModelCopyWith<$Res>? get courier;
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
    Object? id = null,
    Object? documentId = null,
    Object? userID = null,
    Object? orderTotal = null,
    Object? orderAssemblyStatus = null,
    Object? deliveryStatus = null,
    Object? deliveryMethod = null,
    Object? paymentOption = null,
    Object? order_items = null,
    Object? courier = freezed,
    Object? check_in_coffee_shops = freezed,
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
      courier: freezed == courier
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as CourierModel?,
      check_in_coffee_shops: freezed == check_in_coffee_shops
          ? _value.check_in_coffee_shops
          : check_in_coffee_shops // ignore: cast_nullable_to_non_nullable
              as List<CheckInCoffeeShopsModel>?,
    ) as $Val);
  }

  /// Create a copy of ActiveOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourierModelCopyWith<$Res>? get courier {
    if (_value.courier == null) {
      return null;
    }

    return $CourierModelCopyWith<$Res>(_value.courier!, (value) {
      return _then(_value.copyWith(courier: value) as $Val);
    });
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
      {int id,
      String documentId,
      String userID,
      String orderTotal,
      OrderAssemblyStatus orderAssemblyStatus,
      DeliveryStatus deliveryStatus,
      DeliveryOrderMethod deliveryMethod,
      PaymentOrderOption paymentOption,
      List<OrderItemModel> order_items,
      CourierModel? courier,
      List<CheckInCoffeeShopsModel>? check_in_coffee_shops});

  @override
  $CourierModelCopyWith<$Res>? get courier;
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
    Object? id = null,
    Object? documentId = null,
    Object? userID = null,
    Object? orderTotal = null,
    Object? orderAssemblyStatus = null,
    Object? deliveryStatus = null,
    Object? deliveryMethod = null,
    Object? paymentOption = null,
    Object? order_items = null,
    Object? courier = freezed,
    Object? check_in_coffee_shops = freezed,
  }) {
    return _then(_$ActiveOrderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      courier: freezed == courier
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as CourierModel?,
      check_in_coffee_shops: freezed == check_in_coffee_shops
          ? _value._check_in_coffee_shops
          : check_in_coffee_shops // ignore: cast_nullable_to_non_nullable
              as List<CheckInCoffeeShopsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActiveOrderModelImpl implements _ActiveOrderModel {
  const _$ActiveOrderModelImpl(
      {required this.id,
      required this.documentId,
      required this.userID,
      required this.orderTotal,
      required this.orderAssemblyStatus,
      required this.deliveryStatus,
      required this.deliveryMethod,
      required this.paymentOption,
      required final List<OrderItemModel> order_items,
      required this.courier,
      required final List<CheckInCoffeeShopsModel>? check_in_coffee_shops})
      : _order_items = order_items,
        _check_in_coffee_shops = check_in_coffee_shops;

  factory _$ActiveOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActiveOrderModelImplFromJson(json);

  @override
  final int id;
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
  final CourierModel? courier;
  final List<CheckInCoffeeShopsModel>? _check_in_coffee_shops;
  @override
  List<CheckInCoffeeShopsModel>? get check_in_coffee_shops {
    final value = _check_in_coffee_shops;
    if (value == null) return null;
    if (_check_in_coffee_shops is EqualUnmodifiableListView)
      return _check_in_coffee_shops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ActiveOrderModel(id: $id, documentId: $documentId, userID: $userID, orderTotal: $orderTotal, orderAssemblyStatus: $orderAssemblyStatus, deliveryStatus: $deliveryStatus, deliveryMethod: $deliveryMethod, paymentOption: $paymentOption, order_items: $order_items, courier: $courier, check_in_coffee_shops: $check_in_coffee_shops)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActiveOrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
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
                .equals(other._order_items, _order_items) &&
            (identical(other.courier, courier) || other.courier == courier) &&
            const DeepCollectionEquality()
                .equals(other._check_in_coffee_shops, _check_in_coffee_shops));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      documentId,
      userID,
      orderTotal,
      orderAssemblyStatus,
      deliveryStatus,
      deliveryMethod,
      paymentOption,
      const DeepCollectionEquality().hash(_order_items),
      courier,
      const DeepCollectionEquality().hash(_check_in_coffee_shops));

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
      {required final int id,
      required final String documentId,
      required final String userID,
      required final String orderTotal,
      required final OrderAssemblyStatus orderAssemblyStatus,
      required final DeliveryStatus deliveryStatus,
      required final DeliveryOrderMethod deliveryMethod,
      required final PaymentOrderOption paymentOption,
      required final List<OrderItemModel> order_items,
      required final CourierModel? courier,
      required final List<CheckInCoffeeShopsModel>?
          check_in_coffee_shops}) = _$ActiveOrderModelImpl;

  factory _ActiveOrderModel.fromJson(Map<String, dynamic> json) =
      _$ActiveOrderModelImpl.fromJson;

  @override
  int get id;
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
  @override
  CourierModel? get courier;
  @override
  List<CheckInCoffeeShopsModel>? get check_in_coffee_shops;

  /// Create a copy of ActiveOrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActiveOrderModelImplCopyWith<_$ActiveOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CheckInCoffeeShopsModel _$CheckInCoffeeShopsModelFromJson(
    Map<String, dynamic> json) {
  return _CheckInCoffeeShopsModel.fromJson(json);
}

/// @nodoc
mixin _$CheckInCoffeeShopsModel {
  String get coffeeShopID => throw _privateConstructorUsedError;

  /// Serializes this CheckInCoffeeShopsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckInCoffeeShopsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckInCoffeeShopsModelCopyWith<CheckInCoffeeShopsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckInCoffeeShopsModelCopyWith<$Res> {
  factory $CheckInCoffeeShopsModelCopyWith(CheckInCoffeeShopsModel value,
          $Res Function(CheckInCoffeeShopsModel) then) =
      _$CheckInCoffeeShopsModelCopyWithImpl<$Res, CheckInCoffeeShopsModel>;
  @useResult
  $Res call({String coffeeShopID});
}

/// @nodoc
class _$CheckInCoffeeShopsModelCopyWithImpl<$Res,
        $Val extends CheckInCoffeeShopsModel>
    implements $CheckInCoffeeShopsModelCopyWith<$Res> {
  _$CheckInCoffeeShopsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckInCoffeeShopsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffeeShopID = null,
  }) {
    return _then(_value.copyWith(
      coffeeShopID: null == coffeeShopID
          ? _value.coffeeShopID
          : coffeeShopID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckInCoffeeShopsModelImplCopyWith<$Res>
    implements $CheckInCoffeeShopsModelCopyWith<$Res> {
  factory _$$CheckInCoffeeShopsModelImplCopyWith(
          _$CheckInCoffeeShopsModelImpl value,
          $Res Function(_$CheckInCoffeeShopsModelImpl) then) =
      __$$CheckInCoffeeShopsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String coffeeShopID});
}

/// @nodoc
class __$$CheckInCoffeeShopsModelImplCopyWithImpl<$Res>
    extends _$CheckInCoffeeShopsModelCopyWithImpl<$Res,
        _$CheckInCoffeeShopsModelImpl>
    implements _$$CheckInCoffeeShopsModelImplCopyWith<$Res> {
  __$$CheckInCoffeeShopsModelImplCopyWithImpl(
      _$CheckInCoffeeShopsModelImpl _value,
      $Res Function(_$CheckInCoffeeShopsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckInCoffeeShopsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coffeeShopID = null,
  }) {
    return _then(_$CheckInCoffeeShopsModelImpl(
      coffeeShopID: null == coffeeShopID
          ? _value.coffeeShopID
          : coffeeShopID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckInCoffeeShopsModelImpl implements _CheckInCoffeeShopsModel {
  const _$CheckInCoffeeShopsModelImpl({required this.coffeeShopID});

  factory _$CheckInCoffeeShopsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckInCoffeeShopsModelImplFromJson(json);

  @override
  final String coffeeShopID;

  @override
  String toString() {
    return 'CheckInCoffeeShopsModel(coffeeShopID: $coffeeShopID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckInCoffeeShopsModelImpl &&
            (identical(other.coffeeShopID, coffeeShopID) ||
                other.coffeeShopID == coffeeShopID));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, coffeeShopID);

  /// Create a copy of CheckInCoffeeShopsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckInCoffeeShopsModelImplCopyWith<_$CheckInCoffeeShopsModelImpl>
      get copyWith => __$$CheckInCoffeeShopsModelImplCopyWithImpl<
          _$CheckInCoffeeShopsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckInCoffeeShopsModelImplToJson(
      this,
    );
  }
}

abstract class _CheckInCoffeeShopsModel implements CheckInCoffeeShopsModel {
  const factory _CheckInCoffeeShopsModel({required final String coffeeShopID}) =
      _$CheckInCoffeeShopsModelImpl;

  factory _CheckInCoffeeShopsModel.fromJson(Map<String, dynamic> json) =
      _$CheckInCoffeeShopsModelImpl.fromJson;

  @override
  String get coffeeShopID;

  /// Create a copy of CheckInCoffeeShopsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckInCoffeeShopsModelImplCopyWith<_$CheckInCoffeeShopsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
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

CourierModel _$CourierModelFromJson(Map<String, dynamic> json) {
  return _CourierModel.fromJson(json);
}

/// @nodoc
mixin _$CourierModel {
  int get id => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get phoneNum => throw _privateConstructorUsedError;
  String get jobPosition => throw _privateConstructorUsedError;
  CoffeeShopImage? get photo => throw _privateConstructorUsedError;

  /// Serializes this CourierModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourierModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourierModelCopyWith<CourierModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourierModelCopyWith<$Res> {
  factory $CourierModelCopyWith(
          CourierModel value, $Res Function(CourierModel) then) =
      _$CourierModelCopyWithImpl<$Res, CourierModel>;
  @useResult
  $Res call(
      {int id,
      double lat,
      double lng,
      String fullName,
      String phoneNum,
      String jobPosition,
      CoffeeShopImage? photo});

  $CoffeeShopImageCopyWith<$Res>? get photo;
}

/// @nodoc
class _$CourierModelCopyWithImpl<$Res, $Val extends CourierModel>
    implements $CourierModelCopyWith<$Res> {
  _$CourierModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourierModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lat = null,
    Object? lng = null,
    Object? fullName = null,
    Object? phoneNum = null,
    Object? jobPosition = null,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNum: null == phoneNum
          ? _value.phoneNum
          : phoneNum // ignore: cast_nullable_to_non_nullable
              as String,
      jobPosition: null == jobPosition
          ? _value.jobPosition
          : jobPosition // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as CoffeeShopImage?,
    ) as $Val);
  }

  /// Create a copy of CourierModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoffeeShopImageCopyWith<$Res>? get photo {
    if (_value.photo == null) {
      return null;
    }

    return $CoffeeShopImageCopyWith<$Res>(_value.photo!, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourierModelImplCopyWith<$Res>
    implements $CourierModelCopyWith<$Res> {
  factory _$$CourierModelImplCopyWith(
          _$CourierModelImpl value, $Res Function(_$CourierModelImpl) then) =
      __$$CourierModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      double lat,
      double lng,
      String fullName,
      String phoneNum,
      String jobPosition,
      CoffeeShopImage? photo});

  @override
  $CoffeeShopImageCopyWith<$Res>? get photo;
}

/// @nodoc
class __$$CourierModelImplCopyWithImpl<$Res>
    extends _$CourierModelCopyWithImpl<$Res, _$CourierModelImpl>
    implements _$$CourierModelImplCopyWith<$Res> {
  __$$CourierModelImplCopyWithImpl(
      _$CourierModelImpl _value, $Res Function(_$CourierModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourierModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lat = null,
    Object? lng = null,
    Object? fullName = null,
    Object? phoneNum = null,
    Object? jobPosition = null,
    Object? photo = freezed,
  }) {
    return _then(_$CourierModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNum: null == phoneNum
          ? _value.phoneNum
          : phoneNum // ignore: cast_nullable_to_non_nullable
              as String,
      jobPosition: null == jobPosition
          ? _value.jobPosition
          : jobPosition // ignore: cast_nullable_to_non_nullable
              as String,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as CoffeeShopImage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourierModelImpl implements _CourierModel {
  const _$CourierModelImpl(
      {required this.id,
      required this.lat,
      required this.lng,
      required this.fullName,
      required this.phoneNum,
      required this.jobPosition,
      required this.photo});

  factory _$CourierModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourierModelImplFromJson(json);

  @override
  final int id;
  @override
  final double lat;
  @override
  final double lng;
  @override
  final String fullName;
  @override
  final String phoneNum;
  @override
  final String jobPosition;
  @override
  final CoffeeShopImage? photo;

  @override
  String toString() {
    return 'CourierModel(id: $id, lat: $lat, lng: $lng, fullName: $fullName, phoneNum: $phoneNum, jobPosition: $jobPosition, photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourierModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.phoneNum, phoneNum) ||
                other.phoneNum == phoneNum) &&
            (identical(other.jobPosition, jobPosition) ||
                other.jobPosition == jobPosition) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, lat, lng, fullName, phoneNum, jobPosition, photo);

  /// Create a copy of CourierModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourierModelImplCopyWith<_$CourierModelImpl> get copyWith =>
      __$$CourierModelImplCopyWithImpl<_$CourierModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourierModelImplToJson(
      this,
    );
  }
}

abstract class _CourierModel implements CourierModel {
  const factory _CourierModel(
      {required final int id,
      required final double lat,
      required final double lng,
      required final String fullName,
      required final String phoneNum,
      required final String jobPosition,
      required final CoffeeShopImage? photo}) = _$CourierModelImpl;

  factory _CourierModel.fromJson(Map<String, dynamic> json) =
      _$CourierModelImpl.fromJson;

  @override
  int get id;
  @override
  double get lat;
  @override
  double get lng;
  @override
  String get fullName;
  @override
  String get phoneNum;
  @override
  String get jobPosition;
  @override
  CoffeeShopImage? get photo;

  /// Create a copy of CourierModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourierModelImplCopyWith<_$CourierModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
