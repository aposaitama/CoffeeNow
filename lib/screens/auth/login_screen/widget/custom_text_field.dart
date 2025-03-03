import 'package:coffee_now/style/font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final String hint;
  final bool? isPassword;
  const CustomTextField({
    super.key,
    required this.title,
    required this.hint,
    this.isPassword = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    bool obscureText = true;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: AppFonts.poppinsMedium.copyWith(fontSize: 15.0),
        ),
        const SizedBox(
          height: 6.0,
        ),
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
          child: TextField(
            obscureText: widget.isPassword == true ? obscureText : false,
            // controller: controller,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                left: 14.0,
                right: 22.0,
                top: 15.0,
                bottom: 15.0,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintStyle: AppFonts.poppinsRegular,
              hintText: widget.hint,
              suffixIcon: widget.isPassword == true
                  ? Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: IconButton(
                        icon: SvgPicture.asset(
                          'lib/assets/icons/Hide.svg',
                        ),
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                      ),
                    )
                  : null, // Якщо не пароль, не показувати суфікс
            ),
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
