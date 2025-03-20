import 'package:coffee_now/screens/search_screen/widgets/search_history_item_tile.dart';
import 'package:flutter/material.dart';

class SearchHistoryBuilder extends StatelessWidget {
  final void Function(String)? onDelete;
  final void Function(String)? onTap;
  final List searchHistory;
  const SearchHistoryBuilder({
    super.key,
    required this.searchHistory,
    this.onDelete,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(
        0.0,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: searchHistory.length,
      itemBuilder: (context, index) {
        return SearchHistoryItemTile(
          onTap: () => onTap?.call(
            searchHistory[index],
          ),
          onDelete: () => onDelete?.call(
            searchHistory[index],
          ),
          searchHistoryItem: searchHistory[index],
        );
      },
    );
  }
}
