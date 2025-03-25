import 'package:coffee_now/screens/my_basket_screen/widgets/basket_item_tile.dart';
import 'package:flutter/material.dart';

class OtherShopDetailedBuilder extends StatelessWidget {
  final List basketOtherShopList;
  final void Function(int index)? onDeletePressed;
  const OtherShopDetailedBuilder(
      {super.key, this.onDeletePressed, required this.basketOtherShopList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: basketOtherShopList.length,
      itemBuilder: (context, index) {
        return BasketItemTile(
          onPressed: () => onDeletePressed?.call(index),
          basketItem: basketOtherShopList[index].toBasketItem(),
        );
      },
    );
  }
}
