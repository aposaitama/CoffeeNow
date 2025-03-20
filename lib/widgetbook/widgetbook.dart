import 'package:coffee_now/screens/auth/login_screen/widget/custom_button.dart';
import 'package:coffee_now/screens/auth/login_screen/widget/custom_text_field.dart';
import 'package:coffee_now/theme/theme.dart';
import 'package:coffee_now/widgetbook/widgets/custom_bottom_nav_bar_use_case.dart';
import 'package:flutter/material.dart';

import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(addons: [
      DeviceFrameAddon(devices: Devices.ios.all),
      InspectorAddon(),
      GridAddon(100),
      AlignmentAddon(),
      ZoomAddon(),
      ThemeAddon<ThemeData>(
        themes: [
          WidgetbookTheme(name: 'Light', data: lightMode),
          WidgetbookTheme(name: 'Dark', data: dartMode),
        ],
        themeBuilder: (context, theme, child) {
          return Theme(data: theme, child: child);
        },
      ),
    ], directories: [
      WidgetbookFolder(
        name: 'Widgets',
        children: [
          WidgetbookComponent(
            name: 'CustomNavBar',
            useCases: [
              WidgetbookUseCase(
                name: 'Default Style',
                builder: (context) => WigetBookCustomBottomNavBar(
                  currentIndex: 1,
                  onTap: (index) {},
                ),
              ),
            ],
          ),
          WidgetbookComponent(
            name: 'TextFields',
            useCases: [
              WidgetbookUseCase(
                name: 'EmailTextField',
                builder: (context) => const CustomTextField(
                  title: 'Email',
                  hint: 'exmpl@mail.com',
                ),
              ),
            ],
          ),
          WidgetbookComponent(
            name: 'Buttons',
            useCases: [
              WidgetbookUseCase(
                name: 'LoginButton',
                builder: (context) => const CustomButton(
                  buttonText: 'Готово',
                ),
              ),
            ],
          ),
        ],
      )
    ]);
  }
}
