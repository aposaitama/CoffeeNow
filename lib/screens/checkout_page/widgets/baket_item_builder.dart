import 'package:coffee_now/screens/my_basket_screen/widgets/basket_item_tile.dart';
import 'package:flutter/material.dart';

class BasketItemBuilder extends StatelessWidget {
  final List basketListItems;
  final void Function(int index)? onDeletePressed;
  const BasketItemBuilder(
      {super.key, required this.basketListItems, this.onDeletePressed});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: basketListItems.length,
      itemBuilder: (context, index) {
        return BasketItemTile(
          onPressed: () => onDeletePressed?.call(index),
          basketItem: basketListItems[index].toBasketItem(),
        );
      },
    );
  }
}
