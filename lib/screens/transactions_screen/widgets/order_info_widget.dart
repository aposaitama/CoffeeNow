import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class OrderInfoWidget extends StatelessWidget {
  final int orderID;
  final String deliveryTime;
  const OrderInfoWidget(
      {super.key, required this.orderID, required this.deliveryTime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
      ),
      child: Container(
        height: 70.0,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.tertiary,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Code : $orderID',
                    style: AppFonts.poppinsMedium.copyWith(
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      'ArrivedTime : $deliveryTime Min',
                      style: AppFonts.poppinsMedium.copyWith(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                // child: Padding(
                //   padding: const EdgeInsets.symmetric(
                //     horizontal: 17.0,
                //     vertical: 8.0,
                //   ),
                //   child: Text(
                //     'View',
                //     style: AppFonts.poppinsSemiBold.copyWith(
                //       fontSize: 12.0,
                //       color: AppColors.brownColor,
                //     ),
                //   ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
