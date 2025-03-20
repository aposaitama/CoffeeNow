import 'package:coffee_now/models/hive_models/basket_hive_item_model/basket_hive_item_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'basket_hive_model.g.dart';

@HiveType(typeId: 1)
class BasketHiveModel {
  @HiveField(0)
  final String userID;

  @HiveField(1)
  final List<BasketItemHiveModel> basketItem;

  BasketHiveModel({
    required this.userID,
    required this.basketItem,
  });
}
