import 'package:coffee_now/screens/add_to_basket/widgets/count_widget_button.dart';
import 'package:coffee_now/screens/my_basket_screen/edit_product_screen/provider/edit_product_count_provider.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditProductCountWidget extends ConsumerWidget {
  final int count;
  final EditProductCount productCount;
  const EditProductCountWidget(this.productCount, this.count, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => productCount.decrement(),
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
          onTap: () => productCount.increment(),
          child: const CountWidgetButton(
            imageUrl: 'lib/assets/icons/Plus.svg',
          ),
        ),
      ],
    );
  }
}
