import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'edit_product_count_provider.g.dart';

@riverpod
class EditProductCount extends _$EditProductCount {
  @override
  int build(int initialCount) => initialCount;

  void increment() => state++;

  void decrement() {
    if (state > 1) {
      state--;
    }
  }
}
