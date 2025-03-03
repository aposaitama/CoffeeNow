import 'package:coffee_now/screens/auth/forgot_password_screen/forgot_password_screen.dart';
import 'package:coffee_now/screens/auth/login_screen/login_screen.dart';
import 'package:coffee_now/screens/auth/register_screen/register_screen.dart';
import 'package:coffee_now/screens/home_screen/home_screen.dart';
import 'package:coffee_now/screens/profile_screen/profile_screen.dart';
import 'package:coffee_now/screens/root_screen/root_screen.dart';
import 'package:coffee_now/screens/search_screen/search_screen.dart';
import 'package:coffee_now/screens/transactions_screen/transactions_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter createRouter(BuildContext context) {
    return GoRouter(
      initialLocation: '/register',
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) => RootScreen(
            navigationShell: navigationShell,
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
      ],
    );
  }
}
