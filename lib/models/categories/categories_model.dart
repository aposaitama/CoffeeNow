import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_model.g.dart';
part 'categories_model.freezed.dart';

@freezed
class CategoriesModel with _$CategoriesModel {
  const factory CategoriesModel({
    required List<String> categoryName,
  }) = _CategoriesModel;

  factory CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesModelFromJson(json);
}

// @freezed
// class SearchQueryItemsModel with _$SearchQueryItemsModel {
//   const factory SearchQueryItemsModel({
//     required String userSearchQuery,
//   }) = _SearchQueryItemsModel;

//   factory SearchQueryItemsModel.fromJson(Map<String, dynamic> json) =>
//       _$SearchQueryItemsModelFromJson(json);
// }
