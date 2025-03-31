import 'package:chopper/chopper.dart';
import 'package:coffee_now/models/basket_item/basket_item_model.dart';
import 'package:coffee_now/models/transaction_item_model/transaction_item_model.dart';
import 'package:coffee_now/navigation/app_navigation.dart';
import 'package:coffee_now/screens/add_to_basket/provider/add_to_hive_basket_box_provider.dart';
import 'package:coffee_now/screens/add_to_basket/provider/load_concrete_product_provider.dart';

import 'package:coffee_now/screens/detail_page/provider/shop_basic_info_provider/shop_basic_info.dart';
import 'package:coffee_now/screens/transactions_screen/widgets/confirmation_reorder_popup.dart';

import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class TransactionHistoryItemTile extends ConsumerWidget {
  final String userID;
  final TransactionItemModel transactionItem;
  const TransactionHistoryItemTile(
    this.userID, {
    super.key,
    required this.transactionItem,
  });

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final totalProductCount = transactionItem.order_items.fold<int>(
      0,
      (sum, item) => sum + item.productCount,
    );
    final uniqueShopIds =
        transactionItem.order_items.map((item) => item.shopID).toSet().toList();
    final firstCoffeeShopInfo =
        ref.watch(fetchConcreteCoffeeShopProvider(uniqueShopIds[0])).value ??
            [];
    final orderCreatedTime =
        DateFormat('d MMMM, yy').format(transactionItem.updatedAt);

    final basketModel = ref.watch(
      BasketHiveProvider(
        userID,
      ),
    );

    final List<BasketItemModel> newTransactionItemList = [];

    for (OrderItemModel item in transactionItem.order_items) {
      final concreteProductAsync =
          ref.watch(fetchConcreteProductProvider(item.productID));

      if (concreteProductAsync.hasValue && concreteProductAsync.value != null) {
        final concreteProduct = concreteProductAsync.value!;

        final basketItem = BasketItemModel(
          shopID: item.shopID,
          documentId: item.productID,
          productCount: item.productCount,
          price: concreteProduct.price,
          productName: concreteProduct.productName,
          productDescription: concreteProduct.productDescription,
          productImage: concreteProduct.productImage,
          instructions: concreteProduct.instructions,
          selectedOptions: item.selectedOptions,
        );

        newTransactionItemList.add(basketItem);
      }
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: Container(
        height: 88.0,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              spreadRadius: 0,
              blurRadius: 6,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: firstCoffeeShopInfo.isNotEmpty
                        ? Image.network(
                            'http://localhost:1337${firstCoffeeShopInfo.first.image.url}',
                            fit: BoxFit.cover,
                          )
                        : const SizedBox.shrink(),
                  ),
                  uniqueShopIds.length > 1
                      ? Padding(
                          padding: const EdgeInsets.only(
                            right: 4.0,
                            top: 4.0,
                          ),
                          child: Container(
                            width: 17.0,
                            height: 17.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.orangeColor,
                            ),
                            child: Center(
                                child: Text(
                              '+${uniqueShopIds.length - 1}',
                              style: AppFonts.poppinsSemiBold.copyWith(
                                color: Colors.white,
                                fontSize: 11.0,
                              ),
                            )),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            softWrap: true,
                            firstCoffeeShopInfo.isNotEmpty
                                ? uniqueShopIds.length > 1
                                    ? "${firstCoffeeShopInfo[0].shopName} and ${uniqueShopIds.length - 1} more"
                                    : firstCoffeeShopInfo[0].shopName
                                : "Shop Name",
                            style: AppFonts.poppinsMedium.copyWith(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                        Text(
                          orderCreatedTime,
                          style: AppFonts.poppinsRegular.copyWith(
                            color: AppColors.greyRegularTextColor,
                            fontSize: 11.0,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '$totalProductCount items',
                      style: AppFonts.poppinsRegular.copyWith(
                        color: AppColors.greyRegularTextColor,
                        fontSize: 11.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: (basketModel?.basketItem ?? []).isNotEmpty
                          ? GestureDetector(
                              onTap: () => confirmationReorderPopup(
                                context,
                                ref,
                                'Confirm action',
                                'Would you like to add these items to a new or to existing cart?',
                                'Create New Cart',
                                'Add to Existing Cart',
                                () {
                                  ref
                                      .read(BasketHiveProvider(userID).notifier)
                                      .addListOfProductsToNewCart(
                                          newTransactionItemList);
                                  context.pop();
                                  context.push('/my_basket');
                                },
                                () {
                                  ref
                                      .read(BasketHiveProvider(userID).notifier)
                                      .addListOfProductsToExistingCart(
                                          newTransactionItemList);
                                  context.pop();
                                  context.push('/my_basket');
                                },
                              ),
                              child: Text(
                                'Reorder',
                                style: AppFonts.poppinsMedium.copyWith(
                                  color: AppColors.orangeColor,
                                  fontSize: 13.0,
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () => confirmationReorderPopup(
                                context,
                                ref,
                                'Confirm action',
                                'Would you like to reorder these items?',
                                'Yes',
                                'No',
                                () {
                                  ref
                                      .read(BasketHiveProvider(userID).notifier)
                                      .addListOfProductsToExistingCart(
                                          newTransactionItemList);
                                  // ref.invalidate(BasketHiveProvider(userID));
                                  context.pop();
                                  context.push('/my_basket');
                                },
                                () {
                                  context.pop();
                                },
                              ),
                              child: Text(
                                'Reorder',
                                style: AppFonts.poppinsMedium.copyWith(
                                  color: AppColors.orangeColor,
                                  fontSize: 13.0,
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
