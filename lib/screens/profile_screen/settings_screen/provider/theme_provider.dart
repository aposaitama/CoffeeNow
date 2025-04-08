import 'package:coffee_now/di/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends StateNotifier<ThemeMode> {
  final SharedPreferences prefs;
  ThemeNotifier(this.prefs) : super(ThemeMode.light) {
    _loadTheme();
  }

  void _loadTheme() {
    final isDarkMode = prefs.getBool('isDarkMode') ?? false;
    state = isDarkMode ? ThemeMode.dark : ThemeMode.light;
  }

  void toggleTheme(bool isDarkMode) {
    state = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    prefs.setBool('isDarkMode', isDarkMode);
  }
}

final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  final prefs = locator<SharedPreferences>();
  return ThemeNotifier(prefs);
});
