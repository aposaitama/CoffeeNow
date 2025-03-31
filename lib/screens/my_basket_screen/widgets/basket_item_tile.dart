import 'package:coffee_now/models/basket_item/basket_item_model.dart';
import 'package:coffee_now/screens/my_basket_screen/edit_product_screen/edit_product_screen.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class BasketItemTile extends StatelessWidget {
  final void Function()? onPressed;
  final BasketItemModel basketItem;
  const BasketItemTile({
    super.key,
    required this.basketItem,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20.0,
      ),
      child: Column(
        children: [
          Slidable(
            startActionPane: ActionPane(
              motion: const BehindMotion(),
              children: [
                SlidableAction(
                  onPressed: (context) => onPressed?.call(),
                  backgroundColor: const Color(0xFFFE4A49),
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 48.0,
                      height: 48.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          6.0,
                        ),
                        child: Image.network(
                          'http://localhost:1337${basketItem.productImage.url}',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          basketItem.productName,
                          style: AppFonts.poppinsMedium.copyWith(
                            fontSize: 14.0,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '${basketItem.productCount.toString()} items',
                          style: AppFonts.poppinsRegular.copyWith(
                            fontSize: 13.0,
                            color: AppColors.greyA4TextColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5.0,
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditProductScreen(
                          product: basketItem,
                        ),
                      ),
                    ),
                    child: Text(
                      'Edit',
                      style: AppFonts.poppinsMedium.copyWith(
                        fontSize: 13.0,
                        color: AppColors.orangeColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Container(
            height: 3.0,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
