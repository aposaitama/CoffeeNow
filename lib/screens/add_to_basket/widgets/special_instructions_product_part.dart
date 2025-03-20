import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';

class SpecialInstructionsProductPart extends StatelessWidget {
  const SpecialInstructionsProductPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Special Instructions',
              style: AppFonts.poppinsMedium.copyWith(
                fontSize: 14.0,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              textAlign: TextAlign.start,
              'Optional',
              style: AppFonts.poppinsRegular.copyWith(
                fontSize: 11.0,
                color: AppColors.greyA4TextColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10.0,
        ),
        TextField(
          keyboardType: TextInputType.multiline,
          cursorColor: Colors.transparent,
          maxLines: null,
          minLines: 2,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 7.0,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: Theme.of(context).colorScheme.onPrimary,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  6.0,
                ),
              ),
              filled: true,
              fillColor: Theme.of(context).colorScheme.onPrimaryContainer,
              hintText: 'E.g No onions, please',
              hintStyle: AppFonts.poppinsRegular.copyWith(
                color: AppColors.greyRegularTextColor,
                fontSize: 12.0,
              )),
        ),
      ],
    );
  }
}
