import 'package:coffee_now/style/colors.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchTextField extends StatelessWidget {
  final void Function()? onEditingComplete;
  final void Function()? onPrefixPressed;
  final void Function(String)? onChanged;
  final TextEditingController searchFieldController;

  const SearchTextField({
    super.key,
    this.onEditingComplete,
    this.onPrefixPressed,
    this.onChanged,
    required this.searchFieldController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onEditingComplete: onEditingComplete,
      controller: searchFieldController,
      cursorColor: Colors.transparent,
      decoration: InputDecoration(
        prefixIcon: IconButton(
          onPressed: onPrefixPressed,
          icon: SvgPicture.asset(
            'lib/assets/icons/Search.svg',
            fit: BoxFit.scaleDown,
          ),
        ),
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
          borderRadius: BorderRadius.circular(8.0),
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
        hintText: 'Search',
        hintStyle: AppFonts.poppinsRegular.copyWith(
          color: AppColors.greyRegularTextColor,
          fontSize: 14.0,
        ),
      ),
      onChanged: onChanged,
    );
  }
}
