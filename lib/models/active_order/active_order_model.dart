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
    required String documentId,
    required String userID,
    required String orderTotal,
    required OrderAssemblyStatus orderAssemblyStatus,
    required DeliveryStatus deliveryStatus,
    required DeliveryOrderMethod deliveryMethod,
    required PaymentOrderOption paymentOption,
    required List<OrderItemModel> order_items,
  }) = _ActiveOrderModel;

  factory ActiveOrderModel.fromJson(Map<String, dynamic> json) =>
      _$ActiveOrderModelFromJson(json);
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
