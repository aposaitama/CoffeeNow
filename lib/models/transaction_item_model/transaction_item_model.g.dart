// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionItemModelImpl _$$TransactionItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionItemModelImpl(
      orderAssemblyStatus: json['orderAssemblyStatus'] as String,
      deliveryStatus: json['deliveryStatus'] as String,
      deliveryMethod: json['deliveryMethod'] as String,
      paymentOption: json['paymentOption'] as String,
      orderTotal: json['orderTotal'] as String,
      destanationAddress: json['destanationAddress'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      order_items: (json['order_items'] as List<dynamic>)
          .map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TransactionItemModelImplToJson(
        _$TransactionItemModelImpl instance) =>
    <String, dynamic>{
      'orderAssemblyStatus': instance.orderAssemblyStatus,
      'deliveryStatus': instance.deliveryStatus,
      'deliveryMethod': instance.deliveryMethod,
      'paymentOption': instance.paymentOption,
      'orderTotal': instance.orderTotal,
      'destanationAddress': instance.destanationAddress,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'order_items': instance.order_items,
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
