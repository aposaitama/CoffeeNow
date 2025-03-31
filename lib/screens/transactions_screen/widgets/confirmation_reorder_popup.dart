import 'package:coffee_now/screens/transactions_screen/widgets/reorder_popup_button.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void confirmationReorderPopup(
  BuildContext context,
  WidgetRef ref,
  String popupTitle,
  String subTitle,
  String popupOnYesButtonText,
  String popupOnCancelButtonText,
  void Function()? popupOnYesButtonPressed,
  void Function()? popupOnNoButtonPressed,
) {
  showModalBottomSheet(
    useRootNavigator: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
    ),
    builder: (context) {
      return Consumer(
        builder: (context, ref, _) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  popupTitle,
                  style: AppFonts.poppinsSemiBold.copyWith(
                    height: 1.5,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  textAlign: TextAlign.center,
                  subTitle,
                  style: AppFonts.poppinsSemiBold.copyWith(
                    height: 1.5,
                    fontSize: 17.0,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: popupOnYesButtonPressed,
                        child: ReorderPopupButton(
                          buttonText: popupOnYesButtonText,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: popupOnNoButtonPressed,
                        child: ReorderPopupButton(
                          buttonText: popupOnCancelButtonText,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
