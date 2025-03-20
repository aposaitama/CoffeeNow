import 'package:coffee_now/style/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: Color.fromRGBO(245, 245, 245, 1),
    secondary: Color.fromRGBO(50, 29, 11, 1),
    onSecondary: Color.fromRGBO(39, 50, 68, 1),
    onSurface: Color.fromRGBO(50, 29, 11, 1.0),
    primary: Color.fromRGBO(245, 245, 245, 1),
    primaryContainer: Colors.white,
    onPrimary: Color.fromRGBO(170, 170, 170, 1),
    onPrimaryContainer: Color.fromRGBO(238, 238, 238, 1),
    secondaryContainer: Color.fromRGBO(50, 29, 11, 1),
    tertiary: Color.fromRGBO(50, 29, 11, 1),
    onSecondaryContainer: Colors.white,
  ),
);

ThemeData dartMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color.fromRGBO(17, 24, 39, 1.0),
    secondary: Color.fromRGBO(28, 36, 49, 1),
    onSecondary: Color.fromRGBO(50, 50, 50, 1),
    onSurface: Colors.white,
    primary: Color.fromRGBO(28, 36, 49, 1),
    onPrimary: Color.fromRGBO(170, 170, 170, 1),
    primaryContainer: Color.fromRGBO(28, 36, 49, 1),
    onPrimaryContainer: Color.fromRGBO(29, 40, 57, 1),
    secondaryContainer: Colors.white,
    onSecondaryContainer: Color.fromRGBO(17, 24, 39, 1),
    tertiary: AppColors.orangeColor,
  ),
);
