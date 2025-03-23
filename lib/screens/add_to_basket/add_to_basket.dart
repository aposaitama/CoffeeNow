import 'package:bot_toast/bot_toast.dart';
import 'package:coffee_now/models/basket_item/basket_item_model.dart';
import 'package:coffee_now/models/detailed_product/detailed_product_model.dart';
import 'package:coffee_now/screens/add_to_basket/provider/load_concrete_product_provider.dart';
import 'package:coffee_now/screens/add_to_basket/provider/select_instructions_provider.dart';
import 'package:coffee_now/screens/add_to_basket/widgets/concrete_product_top.dart';
import 'package:coffee_now/screens/add_to_basket/widgets/count_widget_button.dart';
import 'package:coffee_now/screens/add_to_basket/widgets/product_count_widget.dart';
import 'package:coffee_now/screens/add_to_basket/widgets/product_instruction_item_tile.dart';
import 'package:coffee_now/screens/add_to_basket/widgets/special_instructions_product_part.dart';
import 'package:coffee_now/screens/auth/login_screen/widget/custom_button.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'provider/add_to_hive_basket_box_provider.dart';

// final productCount = StateProvider<int>((ref) => 1);
// final selectedInstructionsProvider =
//     StateProvider<List<ProductInstruction>>((ref) => []);
class AddToBasket extends ConsumerWidget {
  final String coffeeShopID;
  const AddToBasket({super.key, required this.coffeeShopID});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(productCount);
    final user = ref.watch(userProvider).value;
    final selectedInstuctions = ref.watch(selectedInstructionsProvider);
    final concreteProduct =
        ref.watch(fetchConcreteProductProvider(coffeeShopID)).value;
    return Scaffold(
      body: concreteProduct == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ConcreteProductTop(
                  productImage: concreteProduct.productImage.url,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                concreteProduct.productName,
                                style: AppFonts.poppinsMedium.copyWith(
                                  fontSize: 18.0,
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                ),
                              ),
                              Text(
                                '\$${concreteProduct.price.toString()}',
                                style: AppFonts.poppinsMedium.copyWith(
                                  fontSize: 18.0,
                                  color: AppColors.orangeColor,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            concreteProduct.productDescription,
                            style: AppFonts.poppinsRegular.copyWith(
                              fontSize: 13.0,
                              color: AppColors.greyA4TextColor,
                            ),
                          ),
                          const SizedBox(
                            height: 14.0,
                          ),
                          Container(
                            height: 8.0,
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer,
                          ),
                          concreteProduct.instructions.isNotEmpty
                              ? ListView.builder(
                                  padding: const EdgeInsets.all(0.0),
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount:
                                      concreteProduct.instructions.length,
                                  itemBuilder: (context, index) {
                                    return ProductInstructionItemTile(
                                      instruction:
                                          concreteProduct.instructions[index],
                                    );
                                  },
                                )
                              : const SizedBox.shrink(),
                          const SizedBox(
                            height: 12.0,
                          ),
                          const SpecialInstructionsProductPart(),
                          const SizedBox(
                            height: 28.0,
                          ),
                          const ProductCountWidget(),
                          const SizedBox(
                            height: 59.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (selectedInstuctions.length <
                                  concreteProduct.instructions.length) {
                                BotToast.showText(
                                  text: 'Choose require option fields',
                                );
                              } else {
                                final basketItem = BasketItemModel(
                                  shopID: coffeeShopID,
                                  documentId: concreteProduct.documentId,
                                  price: concreteProduct.price,
                                  productName: concreteProduct.productName,
                                  productDescription:
                                      concreteProduct.productDescription,
                                  productImage: concreteProduct.productImage,
                                  instructions: concreteProduct.instructions,
                                  selectedOptions: selectedInstuctions,
                                  productCount: count,
                                );
                                ref
                                    .read(
                                      BasketHiveProvider(user!.id.toString())
                                          .notifier,
                                    )
                                    .addProductToCart(
                                      user.id.toString(),
                                      basketItem,
                                    );
                                context.pop();
                              }
                            },
                            child: const CustomButton(
                              buttonText: 'Add to Basket',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
