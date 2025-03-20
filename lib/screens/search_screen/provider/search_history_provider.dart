import 'package:coffee_now/models/advert_banner/advert_banner_model.dart';
import 'package:coffee_now/models/hive_models/search_history_hive_model/search_history_hive_model.dart';
import 'package:coffee_now/models/categories/categories_model.dart';
import 'package:coffee_now/sources/api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_history_provider.g.dart';

@riverpod
Future<CategoriesModel?> fetchCategories(Ref ref) async {
  final apiService = ref.read(apiServiceProvider);
  try {
    return await apiService.getUserSearchHistory();
  } catch (e) {
    throw Exception('Failed to load search history: $e');
  }
}

@riverpod
Box<SearchHistoryHiveModel> searchHistoryBox(Ref ref) {
  return Hive.box<SearchHistoryHiveModel>('userSearchHistory');
}

@riverpod
class SearchHistory extends _$SearchHistory {
  @override
  List<String> build(String userID) {
    final box = ref.watch(searchHistoryBoxProvider);
    return box.get(userID)?.searchHistoryItem ?? [];
  }

  void addCategory(String category) {
    if (!state.contains(category)) {
      final updatedCategories = [...state, category];
      final box = ref.read(searchHistoryBoxProvider);
      box.put(
          userID,
          SearchHistoryHiveModel(
              userID: userID, searchHistoryItem: updatedCategories));
      state = updatedCategories;
    }
  }

  void deleteCategory(String category) {
    if (category.isNotEmpty) {
      final updatedCategories =
          state.where((item) => item != category).toList();
      final box = ref.read(searchHistoryBoxProvider);
      box.put(
          userID,
          SearchHistoryHiveModel(
              userID: userID, searchHistoryItem: updatedCategories));
      state = updatedCategories;
    }
  }

  void clearHistory() {
    final box = ref.read(searchHistoryBoxProvider);
    box.delete(userID);
    state = [];
  }
}
