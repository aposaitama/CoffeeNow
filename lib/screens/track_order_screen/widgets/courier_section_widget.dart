import 'package:bot_toast/bot_toast.dart';
import 'package:coffee_now/models/active_order/active_order_model.dart';
import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class CourierSectionWidget extends StatelessWidget {
  final ActiveOrderModel trackItem;
  const CourierSectionWidget({super.key, required this.trackItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color:
                Theme.of(context).colorScheme.onPrimaryContainer.withOpacity(1),
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: const Offset(4.0, 4.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 14.0,
          vertical: 19.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: (trackItem?.courier?.photo?.url ?? '').isNotEmpty
                      ? SizedBox(
                          width: 62.0,
                          height: 62.0,
                          child: Image.network(
                            'http://localhost:1337${trackItem?.courier?.photo?.url}',
                            width: double.infinity,
                            fit: BoxFit.scaleDown,
                          ),
                        )
                      : Image.asset(
                          fit: BoxFit.scaleDown,
                          'lib/assets/icons/fcb1cd556531e09930864a75ab064bc3.png',
                        ),
                ),
                const SizedBox(
                  width: 14.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      trackItem?.courier?.fullName ?? 'Courier name',
                      style: AppFonts.poppinsSemiBold.copyWith(
                        fontSize: 14.0,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    Text(
                      'ID - ${trackItem?.courier?.id ?? '0'}',
                      style: AppFonts.poppinsMedium.copyWith(
                        fontSize: 12.0,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        '${trackItem?.courier?.jobPosition ?? 'Coffee Courier'}',
                        style: AppFonts.poppinsMedium.copyWith(
                          fontSize: 9.0,
                          color: AppColors.greyTitleColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () async {
                final phoneNumber = trackItem?.courier?.phoneNum ?? '';
                final Uri url = Uri(scheme: 'tel', path: phoneNumber);
                try {
                  debugPrint('Номер для дзвінка: $phoneNumber');
                  await launchUrl(url);
                } catch (e) {
                  BotToast.showText(text: 'Error $e');
                }
              },
              child: Container(
                height: 30.0,
                width: 30.0,
                decoration: BoxDecoration(
                    color: AppColors.orangeColor,
                    borderRadius: BorderRadius.circular(6.0),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.orangeColor.withOpacity(0.2),
                        blurRadius: 4.0,
                        spreadRadius: 2.0,
                        offset: const Offset(2.0, 2.0),
                      ),
                    ]),
                child: SvgPicture.asset(
                  fit: BoxFit.scaleDown,
                  'lib/assets/icons/Phone.svg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
