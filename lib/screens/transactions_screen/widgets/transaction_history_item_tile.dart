import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionHistoryItemTile extends StatelessWidget {
  const TransactionHistoryItemTile({super.key});

  @override
  Widget build(BuildContext context) {
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
              ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Image.network(
                  'http://localhost:1337/uploads/Macchiato_9b2904a97e.png',
                  fit: BoxFit.cover,
                ),
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
                        Text(
                          'Starbucks - CSB Mall',
                          style: AppFonts.poppinsMedium.copyWith(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 13.0,
                          ),
                        ),
                        Text(
                          '28, July 2021',
                          style: AppFonts.poppinsRegular.copyWith(
                            color: AppColors.greyRegularTextColor,
                            fontSize: 11.0,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '2 items',
                      style: AppFonts.poppinsRegular.copyWith(
                        color: AppColors.greyRegularTextColor,
                        fontSize: 11.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        'Reorder',
                        style: AppFonts.poppinsMedium.copyWith(
                          color: AppColors.orangeColor,
                          fontSize: 13.0,
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
