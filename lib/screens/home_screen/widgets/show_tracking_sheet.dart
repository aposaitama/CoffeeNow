import 'package:coffee_now/models/active_order/active_order_model.dart';
import 'package:coffee_now/screens/root_screen/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void showActiveOrdersSheet(
    BuildContext context, List<ActiveOrderModel> activeOrders) {
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
              return ListTile(
                title: Text(activeOrders[index].documentId),
                onTap: () {
                  context.pop();
                  context
                      .push('/track_order/:${activeOrders[index].documentId}');
                },
              );
            },
          ),
        ]),
      );
    },
  );
}
