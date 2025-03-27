import 'package:coffee_now/screens/add_to_basket/add_to_basket.dart';
import 'package:coffee_now/screens/auth/address_setup_screen/address_setup_screen.dart';
import 'package:coffee_now/screens/auth/auth_gate_screen/auth_gate_screen.dart';
import 'package:coffee_now/screens/auth/forgot_password_screen/forgot_password_screen.dart';
import 'package:coffee_now/screens/auth/login_screen/login_screen.dart';
import 'package:coffee_now/screens/auth/register_screen/register_screen.dart';
import 'package:coffee_now/screens/checkout_page/checkout_page.dart';
import 'package:coffee_now/screens/detail_page/detail_coffee_page.dart';
import 'package:coffee_now/screens/favourite_screen.dart/favourite_screen.dart';
import 'package:coffee_now/screens/home_screen/home_screen.dart';
import 'package:coffee_now/screens/my_basket_screen/my_basket_screen.dart';
import 'package:coffee_now/screens/profile_screen/profile_screen.dart';
import 'package:coffee_now/screens/root_screen/root_screen.dart';
import 'package:coffee_now/screens/search_screen/search_screen.dart';
import 'package:coffee_now/screens/transactions_screen/transactions_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  GoRouter createRouter(BuildContext context) {
    return GoRouter(
      initialLocation: '/auth_gate',
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
                    return SearchScreen();
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
          path: '/add_to_basket/:documentID',
          builder: (context, state) {
            final coffeeShopID = state.pathParameters['documentID'] ?? '';
            return AddToBasket(
              coffeeShopID: coffeeShopID,
            );
          },
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
          path: '/address_setup',
          builder: (context, state) => const AddressSetupScreen(),
        ),
        GoRoute(
          path: '/auth_gate',
          builder: (context, state) => const AuthGateScreen(),
        ),
      ],
    );
  }
}
