import 'package:coffee_now/screens/add_to_basket/widgets/count_widget_button.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productCount = StateProvider<int>((ref) => 1);

class ProductCountWidget extends ConsumerWidget {
  const ProductCountWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(productCount);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            final conctereProductCount = ref.read(productCount.notifier).state;
            if (conctereProductCount > 1) {
              ref.read(productCount.notifier).state--;
            }
          },
          child: const CountWidgetButton(
            imageUrl: 'lib/assets/icons/Minus.svg',
          ),
        ),
        const SizedBox(
          width: 27.0,
        ),
        Text(
          count.toString(),
          style: AppFonts.poppinsMedium.copyWith(
            fontSize: 24.0,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const SizedBox(
          width: 27.0,
        ),
        GestureDetector(
          onTap: () => ref.read(productCount.notifier).state++,
          child: const CountWidgetButton(
            imageUrl: 'lib/assets/icons/Plus.svg',
          ),
        ),
      ],
    );
  }
}
