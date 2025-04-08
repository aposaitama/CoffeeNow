import 'package:coffee_now/screens/profile_screen/settings_screen/provider/theme_provider.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  locator.registerSingleton<SharedPreferences>(prefs);
  locator.registerSingleton<ThemeNotifier>(ThemeNotifier(prefs));
}
