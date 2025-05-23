import 'package:coffee_now/screens/add_to_basket/add_to_basket.dart';
import 'package:coffee_now/screens/auth/address_setup_screen/address_setup_screen.dart';
import 'package:coffee_now/screens/auth/auth_gate_screen/auth_gate_screen.dart';
import 'package:coffee_now/screens/auth/forgot_password_screen/forgot_password_screen.dart';
import 'package:coffee_now/screens/auth/login_screen/login_screen.dart';
import 'package:coffee_now/screens/auth/register_screen/register_screen.dart';
import 'package:coffee_now/screens/checkout_page/checkout_page.dart';
import 'package:coffee_now/screens/detail_page/detail_coffee_page.dart';
import 'package:coffee_now/screens/favourite_screen/favourite_screen.dart';
import 'package:coffee_now/screens/home_screen/home_screen.dart';
import 'package:coffee_now/screens/my_basket_screen/add_address_basket_screen/add_address_basket_screen.dart';
import 'package:coffee_now/screens/my_basket_screen/my_basket_screen.dart';
import 'package:coffee_now/screens/profile_screen/about_coffee_screen/about_coffee_screen.dart';
import 'package:coffee_now/screens/profile_screen/address_info_screen/address_info_screen.dart';
import 'package:coffee_now/screens/profile_screen/edit_account_info_screen/edit_account_info_screen.dart';
import 'package:coffee_now/screens/profile_screen/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:coffee_now/screens/profile_screen/profile_screen.dart';
import 'package:coffee_now/screens/profile_screen/settings_screen/settings_screen.dart';
import 'package:coffee_now/screens/root_screen/root_screen.dart';
import 'package:coffee_now/screens/search_screen/search_screen.dart';
import 'package:coffee_now/screens/splash_screen/splash_screen.dart';
import 'package:coffee_now/screens/track_order_screen/track_order_screen2.dart';
import 'package:coffee_now/screens/transactions_screen/transactions_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  GoRouter createRouter() {
    return GoRouter(
      initialLocation: '/splash_screen',
      // initialLocation: '/auth_gate',
      // redirect: (context, state) {
      //   if (hasToken) {
      //     return null;
      //   }
      //   return '/login';
      // },
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) => RootScreen(
            navigationShell: navigationShell,
            scaffoldKey: scaffoldKey,
          ),
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/home',
                  builder: (context, state) {
                    return const HomeScreen();
                  },
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/search',
                  builder: (context, state) {
                    return const SearchScreen();
                  },
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/transactions',
                  builder: (context, state) => const TransactionsScreen(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: '/profile',
                  builder: (context, state) => const ProfileScreen(),
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: '/detail_page/:coffeeShopID',
          builder: (context, state) {
            final coffeeShopID = state.pathParameters['coffeeShopID'] ?? '';
            return DetailCoffeePage(coffeeShopID: coffeeShopID);
          },
        ),
        GoRoute(
          path: '/favourite_page',
          builder: (context, state) {
            return const FavouriteScreen();
          },
        ),
        GoRoute(
          path: '/my_basket',
          builder: (context, state) {
            return const MyBasketScreen();
          },
        ),
        GoRoute(
          path: '/track_order2/:trackOrderID',
          builder: (context, state) {
            final trackOrderID = state.pathParameters['trackOrderID'] ?? '';
            return TrackOrderScreen2(
              trackOrderID,
            );
          },
        ),
        GoRoute(
          path: '/add_to_basket/:documentID',
          builder: (context, state) {
            final coffeeShopID = state.pathParameters['documentID'] ?? '';
            return AddToBasket(
              coffeeShopID: coffeeShopID,
            );
          },
        ),
        GoRoute(
          path: '/address_info',
          builder: (context, state) => const AddressInfoScreen(),
        ),
        GoRoute(
          path: '/about',
          builder: (context, state) => const AboutCoffeeScreen(),
        ),
        GoRoute(
          path: '/privpolicy',
          builder: (context, state) => const PrivacyPolicyScreen(),
        ),
        GoRoute(
          path: '/edit_account',
          builder: (context, state) => const EditAccountInfoScreen(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsScreen(),
        ),
        GoRoute(
          path: '/checkout',
          builder: (context, state) => const CheckoutPage(),
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: '/register',
          builder: (context, state) => const RegisterScreen(),
        ),
        GoRoute(
          path: '/forgot_password',
          builder: (context, state) => const ForgotPasswordScreen(),
        ),
        GoRoute(
          path: '/address_basket_setup',
          builder: (context, state) => const AddAddressBasketScreen(),
        ),
        GoRoute(
          path: '/address_setup',
          builder: (context, state) => const AddressSetupScreen(),
        ),
        GoRoute(
          path: '/splash_screen',
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
          path: '/auth_gate',
          builder: (context, state) => const AuthGateScreen(),
        ),
      ],
    );
  }
}
