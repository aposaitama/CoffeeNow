import 'package:flutter/material.dart';
import 'package:coffee_now/style/font.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTextField extends StatefulWidget {
  final String title;
  final String hint;
  const CustomListTextField(
      {super.key, required this.title, required this.hint});

  @override
  State<CustomListTextField> createState() => _CustomListTextFieldState();
}

class _CustomListTextFieldState extends State<CustomListTextField> {
  final List<String> countries = [
    'Ukraine',
    'Polsand',
    'Germany',
    'France',
    'USA'
  ];
  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: AppFonts.poppinsMedium.copyWith(
            fontSize: 15.0,
          ),
        ),
        const SizedBox(height: 6.0),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            border: Border.all(
              width: 2.0,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: DropdownButtonFormField<String>(
            value: selectedCountry,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 14.0,
                vertical: 15.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
            ),
            icon: SvgPicture.asset('lib/assets/icons/Arrow - Down 2.svg'),
            hint: Text(widget.hint, style: AppFonts.poppinsRegular),
            items: countries.map((String country) {
              return DropdownMenuItem<String>(
                value: country,
                child: Text(country, style: AppFonts.poppinsRegular),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                selectedCountry = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
