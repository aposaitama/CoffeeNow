import 'package:coffee_now/screens/detail_page/widgets/favourite_product_item_tile.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/screens/search_screen/provider/search_filtered_product_provider.dart';
import 'package:coffee_now/screens/search_screen/provider/search_history_provider.dart';
import 'package:coffee_now/screens/search_screen/widgets/search_categories_item_tile.dart';
import 'package:coffee_now/screens/search_screen/widgets/search_history_builder.dart';
import 'package:coffee_now/screens/search_screen/widgets/search_history_header.dart';
import 'package:coffee_now/screens/search_screen/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchTextProvider = StateProvider<String>((ref) => '');
final selectedCategoryProvider = StateProvider<String>((ref) => '');

class SearchScreen extends HookConsumerWidget {
  const SearchScreen({
    super.key,
  });

  void _addCategory(
    WidgetRef ref,
    String category,
    String currentUserID,
  ) {
    ref
        .read(
          searchHistoryProvider(
            currentUserID,
          ).notifier,
        )
        .addCategory(
          category,
        );
  }

  void _deleteHistory(
    WidgetRef ref,
    String currentUserID,
  ) {
    ref
        .read(
          SearchHistoryProvider(currentUserID).notifier,
        )
        .clearHistory();
  }

  void _deleteCategory(
    WidgetRef ref,
    String currentUserID,
    String searchHistoryItem,
  ) {
    ref
        .read(
          SearchHistoryProvider(
            currentUserID,
          ).notifier,
        )
        .deleteCategory(
          searchHistoryItem,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider).value;
    final String currentUserID = user?.email ?? '';
    final categories = ref.watch(fetchCategoriesProvider).value;
    final categoriesList = categories?.categoryName ?? [];
    final searchHistory = ref.watch(searchHistoryProvider(currentUserID));
    final selectedCategory = ref.watch(selectedCategoryProvider);
    final searchText = ref.watch(searchTextProvider);
    final searchController = useTextEditingController(text: searchText);
    final filteredProducts = selectedCategory.isNotEmpty
        ? ref
                .watch(
                    fetchFilteredProductsWithCategoryProvider(selectedCategory))
                .value ??
            []
        : searchText.isNotEmpty
            ? ref.watch(fetchFilteredProductsProvider(searchText)).value ?? []
            : [];

    bool hasSearchText = searchText.isNotEmpty;
    useEffect(
      () {
        searchController.value = TextEditingValue(
          text: searchText,
          selection: TextSelection.collapsed(offset: searchText.length),
        );
        return null;
      },
      [searchText],
    );

    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          children: [
            SafeArea(
              bottom: false,
              child: selectedCategory.isEmpty
                  ? SearchTextField(
                      searchFieldController: searchController,
                      onEditingComplete: () => _addCategory(
                        ref,
                        searchText,
                        currentUserID,
                      ),
                      onPrefixPressed: () => _addCategory(
                        ref,
                        searchText,
                        currentUserID,
                      ),
                      onChanged: (text) {
                        ref.read(searchTextProvider.notifier).state = text;
                      },
                    )
                  : const SizedBox(
                      height: 48,
                    ),
            ),
            const SizedBox(
              height: 22.0,
            ),
            if (categories != null)
              if (!hasSearchText && categories.categoryName.isNotEmpty)
                Align(
                  alignment: Alignment.topLeft,
                  child: Wrap(
                    spacing: 8.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    children: categoriesList.map((category) {
                      final bool isSelected = selectedCategory == category;
                      return GestureDetector(
                        onTap: () {
                          selectedCategory == category
                              ? ref
                                  .read(selectedCategoryProvider.notifier)
                                  .state = ''
                              : ref
                                  .read(selectedCategoryProvider.notifier)
                                  .state = category;
                        },
                        child: SearchCategoriesItemTile(
                          isSelected: isSelected,
                          categoryName: category,
                        ),
                      );
                    }).toList(),
                  ),
                ),
            const SizedBox(
              height: 18.0,
            ),
            if (selectedCategory.isEmpty &&
                !hasSearchText &&
                searchHistory.isNotEmpty)
              Column(
                children: [
                  SearchHistoryHeader(
                    onClearAllTap: () => _deleteHistory(
                      ref,
                      currentUserID,
                    ),
                  ),
                  SearchHistoryBuilder(
                    onTap: (String item) =>
                        ref.read(searchTextProvider.notifier).state = item,
                    searchHistory: searchHistory,
                    onDelete: (String item) => _deleteCategory(
                      ref,
                      currentUserID,
                      item,
                    ),
                  ),
                ],
              ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.only(
                  bottom: 40.0,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: ((width / 2) - 40) / 225,
                ),
                itemCount:
                    filteredProducts.isEmpty ? 0 : filteredProducts.length,
                itemBuilder: (context, index) {
                  return FavouriteProductItemTile(
                    shopProduct: filteredProducts[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
