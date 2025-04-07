// import 'package:coffee_now/models/active_order/active_order_model.dart';
// import 'package:coffee_now/screens/detail_page/provider/shop_basic_info_provider/shop_basic_info.dart';

// import 'package:coffee_now/style/font.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';

// void showActiveOrdersSheet(
//     BuildContext context, List<ActiveOrderModel> activeOrders, WidgetRef ref) {
//   showModalBottomSheet(
//     context: context,
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
//     ),
//     builder: (context) {
//       return Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(mainAxisSize: MainAxisSize.min, children: [
//           ListView.builder(
//             physics: const NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             itemCount: activeOrders.length,
//             itemBuilder: (BuildContext context, int index) {
//               final trackItem = activeOrders[index];

//               final trackOrderItems = trackItem.order_items;
//               final groupedItemsByID =
//                   trackOrderItems.map((item) => item.shopID).toSet().toList();
//               final firstCoffeeShopInfo = ref
//                   .watch(fetchConcreteCoffeeShopProvider(
//                     groupedItemsByID[0],
//                   ))
//                   .value;

//               print(firstCoffeeShopInfo);
//               // final shopName = groupedItemsByID.isEmpty
//               //     ? ''
//               //     : (firstCoffeeShopInfo.isNotEmpty
//               //         ? (groupedItemsByID.length > 1
//               //             ? '${firstCoffeeShopInfo.first.shopName} and ${groupedItemsByID.length - 1} more'
//               //             : firstCoffeeShopInfo.first.shopName)
//               //         : '');

//               return ListTile(
//                 title: Text(
//                   'shopName',
//                   style: AppFonts.bebasMedium.copyWith(
//                     color: Colors.black,
//                   ),
//                 ),
//                 onTap: () {
//                   context.pop();
//                   context
//                       .push('/track_order2/${activeOrders[index].documentId}');
//                 },
//               );
//             },
//           ),
//         ]),
//       );
//     },
//   );
// }

import 'package:coffee_now/models/active_order/active_order_model.dart';
import 'package:coffee_now/screens/detail_page/provider/shop_basic_info_provider/shop_basic_info.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void showActiveOrdersSheet(
    BuildContext context, List<ActiveOrderModel> activeOrders, WidgetRef ref) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: activeOrders.length,
            itemBuilder: (BuildContext context, int index) {
              final trackItem = activeOrders[index];
              final trackOrderItems = trackItem.order_items;
              final groupedItemsByID =
                  trackOrderItems.map((item) => item.shopID).toSet().toList();

              if (groupedItemsByID.isEmpty) {
                return const ListTile(
                  title: Text('Unknown Shop'),
                );
              }

              final coffeeShopProvider =
                  fetchConcreteCoffeeShopProvider(groupedItemsByID[0]);

              return Consumer(
                builder: (context, ref, child) {
                  final asyncShop = ref.watch(coffeeShopProvider);

                  return asyncShop.when(
                    data: (coffeeShops) {
                      final shopName = coffeeShops.isNotEmpty
                          ? (groupedItemsByID.length > 1
                              ? '${coffeeShops.first.shopName} and ${groupedItemsByID.length - 1} more'
                              : coffeeShops.first.shopName)
                          : 'Unknown Shop';

                      return ListTile(
                        title: Text(
                          shopName,
                          style: AppFonts.bebasMedium.copyWith(
                              color: Theme.of(context).colorScheme.onSurface),
                        ),
                        onTap: () {
                          context.pop();
                          context.push(
                              '/track_order2/${activeOrders[index].documentId}');
                        },
                      );
                    },
                    loading: () => const ListTile(
                      title: Text('Loading...'),
                    ),
                    error: (err, _) => ListTile(
                      title: Text(
                        'Error: $err',
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ]),
      );
    },
  );
}
