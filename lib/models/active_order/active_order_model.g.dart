// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActiveOrderModelImpl _$$ActiveOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ActiveOrderModelImpl(
      id: (json['id'] as num).toInt(),
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
      courier: json['courier'] == null
          ? null
          : CourierModel.fromJson(json['courier'] as Map<String, dynamic>),
      check_in_coffee_shops: (json['check_in_coffee_shops'] as List<dynamic>?)
          ?.map((e) =>
              CheckInCoffeeShopsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ActiveOrderModelImplToJson(
        _$ActiveOrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'userID': instance.userID,
      'orderTotal': instance.orderTotal,
      'orderAssemblyStatus':
          _$OrderAssemblyStatusEnumMap[instance.orderAssemblyStatus]!,
      'deliveryStatus': _$DeliveryStatusEnumMap[instance.deliveryStatus]!,
      'deliveryMethod': _$DeliveryOrderMethodEnumMap[instance.deliveryMethod]!,
      'paymentOption': _$PaymentOrderOptionEnumMap[instance.paymentOption]!,
      'order_items': instance.order_items,
      'courier': instance.courier,
      'check_in_coffee_shops': instance.check_in_coffee_shops,
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

_$CheckInCoffeeShopsModelImpl _$$CheckInCoffeeShopsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckInCoffeeShopsModelImpl(
      coffeeShopID: json['coffeeShopID'] as String,
    );

Map<String, dynamic> _$$CheckInCoffeeShopsModelImplToJson(
        _$CheckInCoffeeShopsModelImpl instance) =>
    <String, dynamic>{
      'coffeeShopID': instance.coffeeShopID,
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

_$CourierModelImpl _$$CourierModelImplFromJson(Map<String, dynamic> json) =>
    _$CourierModelImpl(
      id: (json['id'] as num).toInt(),
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      fullName: json['fullName'] as String,
      phoneNum: json['phoneNum'] as String,
      jobPosition: json['jobPosition'] as String,
      photo: json['photo'] == null
          ? null
          : CoffeeShopImage.fromJson(json['photo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourierModelImplToJson(_$CourierModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lat': instance.lat,
      'lng': instance.lng,
      'fullName': instance.fullName,
      'phoneNum': instance.phoneNum,
      'jobPosition': instance.jobPosition,
      'photo': instance.photo,
    };
