import 'package:hive_flutter/hive_flutter.dart';

part 'search_history_hive_model.g.dart';

@HiveType(typeId: 0)
class SearchHistoryHiveModel {
  @HiveField(0)
  final String userID;

  @HiveField(1)
  final List<String> searchHistoryItem;

  SearchHistoryHiveModel(
      {required this.userID, required this.searchHistoryItem});
}
