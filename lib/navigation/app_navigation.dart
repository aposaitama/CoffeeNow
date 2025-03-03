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
      initialLocation: '/home',
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
      ],
    );
  }
}
