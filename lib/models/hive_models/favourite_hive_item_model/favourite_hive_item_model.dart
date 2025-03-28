import 'package:hive_flutter/hive_flutter.dart';

part 'favourite_hive_item_model.g.dart';

@HiveType(typeId: 7)
class FavouriteHiveItemModel {
  @HiveField(0)
  final String userID;

  @HiveField(1)
  final List<String> items;

  FavouriteHiveItemModel({required this.userID, required this.items});
}
