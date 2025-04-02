// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActiveOrderModelImpl _$$ActiveOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ActiveOrderModelImpl(
      documentId: json['documentId'] as String,
      userID: json['userID'] as String,
      orderTotal: json['orderTotal'] as String,
      orderAssemblyStatus: $enumDecode(
          _$OrderAssemblyStatusEnumMap, json['orderAssemblyStatus']),
      deliveryStatus:
          $enumDecode(_$DeliveryStatusEnumMap, json['deliveryStatus']),
      deliveryMethod:
          $enumDecode(_$DeliveryOrderMethodEnumMap, json['deliveryMethod']),
      paymentOption:
          $enumDecode(_$PaymentOrderOptionEnumMap, json['paymentOption']),
      order_items: (json['order_items'] as List<dynamic>)
          .map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ActiveOrderModelImplToJson(
        _$ActiveOrderModelImpl instance) =>
    <String, dynamic>{
      'documentId': instance.documentId,
      'userID': instance.userID,
      'orderTotal': instance.orderTotal,
      'orderAssemblyStatus':
          _$OrderAssemblyStatusEnumMap[instance.orderAssemblyStatus]!,
      'deliveryStatus': _$DeliveryStatusEnumMap[instance.deliveryStatus]!,
      'deliveryMethod': _$DeliveryOrderMethodEnumMap[instance.deliveryMethod]!,
      'paymentOption': _$PaymentOrderOptionEnumMap[instance.paymentOption]!,
      'order_items': instance.order_items,
    };

const _$OrderAssemblyStatusEnumMap = {
  OrderAssemblyStatus.initial: 'initial',
  OrderAssemblyStatus.inProggress: 'inProggress',
  OrderAssemblyStatus.finished: 'finished',
};

const _$DeliveryStatusEnumMap = {
  DeliveryStatus.initial: 'initial',
  DeliveryStatus.inProggress: 'inProggress',
  DeliveryStatus.finished: 'finished',
};

const _$DeliveryOrderMethodEnumMap = {
  DeliveryOrderMethod.delivery: 'delivery',
  DeliveryOrderMethod.selfPickup: 'selfPickup',
};

const _$PaymentOrderOptionEnumMap = {
  PaymentOrderOption.card: 'card',
  PaymentOrderOption.cash: 'cash',
};

_$OrderItemModelImpl _$$OrderItemModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemModelImpl(
      shopID: json['shopID'] as String,
      productID: json['productID'] as String,
      productCount: (json['productCount'] as num).toInt(),
      selectedOptions: Map<String, String>.from(json['selectedOptions'] as Map),
    );

Map<String, dynamic> _$$OrderItemModelImplToJson(
        _$OrderItemModelImpl instance) =>
    <String, dynamic>{
      'shopID': instance.shopID,
      'productID': instance.productID,
      'productCount': instance.productCount,
      'selectedOptions': instance.selectedOptions,
    };
