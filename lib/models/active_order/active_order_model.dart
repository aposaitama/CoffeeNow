// ignore_for_file: non_constant_identifier_names

import 'package:coffee_now/models/detailed_coffee_shop/detailed_coffee_shop_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_order_model.freezed.dart';
part 'active_order_model.g.dart';

@JsonEnum(valueField: 'value')
enum OrderAssemblyStatus {
  @JsonValue('initial')
  initial,
  @JsonValue('inProggress')
  inProggress,
  @JsonValue('finished')
  finished,
}

@JsonEnum(valueField: 'value')
enum DeliveryStatus {
  @JsonValue('initial')
  initial,
  @JsonValue('inProggress')
  inProggress,
  @JsonValue('finished')
  finished,
}

@JsonEnum(valueField: 'value')
enum DeliveryOrderMethod {
  @JsonValue('delivery')
  delivery,
  @JsonValue('selfPickup')
  selfPickup,
}

@JsonEnum(valueField: 'value')
enum PaymentOrderOption {
  @JsonValue('card')
  card,
  @JsonValue('cash')
  cash,
}

@freezed
class ActiveOrderModel with _$ActiveOrderModel {
  const factory ActiveOrderModel({
    required int id,
    required String documentId,
    required String userID,
    required String orderTotal,
    required OrderAssemblyStatus orderAssemblyStatus,
    required DeliveryStatus deliveryStatus,
    required DeliveryOrderMethod deliveryMethod,
    required PaymentOrderOption paymentOption,
    required List<OrderItemModel> order_items,
    required CourierModel? courier,
    required List<CheckInCoffeeShopsModel>? check_in_coffee_shops,
  }) = _ActiveOrderModel;

  factory ActiveOrderModel.fromJson(Map<String, dynamic> json) =>
      _$ActiveOrderModelFromJson(json);
}

@freezed
class CheckInCoffeeShopsModel with _$CheckInCoffeeShopsModel {
  const factory CheckInCoffeeShopsModel({
    required String coffeeShopID,
  }) = _CheckInCoffeeShopsModel;

  factory CheckInCoffeeShopsModel.fromJson(Map<String, dynamic> json) =>
      _$CheckInCoffeeShopsModelFromJson(json);
}

@freezed
class OrderItemModel with _$OrderItemModel {
  const factory OrderItemModel({
    required String shopID,
    required String productID,
    required int productCount,
    required Map<String, String> selectedOptions,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);
}

@freezed
class CourierModel with _$CourierModel {
  const factory CourierModel({
    required int id,
    required double lat,
    required double lng,
    required String fullName,
    required String phoneNum,
    required String jobPosition,
    required CoffeeShopImage? photo,
  }) = _CourierModel;

  factory CourierModel.fromJson(Map<String, dynamic> json) =>
      _$CourierModelFromJson(json);
}
