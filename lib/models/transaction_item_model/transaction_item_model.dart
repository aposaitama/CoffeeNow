import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_item_model.freezed.dart';
part 'transaction_item_model.g.dart';

@freezed
class TransactionItemModel with _$TransactionItemModel {
  const factory TransactionItemModel({
    required String orderAssemblyStatus,
    required String deliveryStatus,
    required String deliveryMethod,
    required String paymentOption,
    required String orderTotal,
    required String destanationAddress,
    required DateTime updatedAt,
    required List<OrderItemModel> order_items,
  }) = _TransactionItemModel;

  factory TransactionItemModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionItemModelFromJson(json);
}

@freezed
class OrderItemModel with _$OrderItemModel {
  const factory OrderItemModel({
    required String shopID, //
    required String productID,
    required int productCount,
    required Map<String, String> selectedOptions,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);
}
