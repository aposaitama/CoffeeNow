import 'package:coffee_now/navigation/app_navigation.dart';
import 'package:coffee_now/screens/auth/login_screen/login_screen.dart';
import 'package:coffee_now/screens/auth/providers/auth_provider.dart';
import 'package:coffee_now/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AuthGateScreen extends ConsumerWidget {
  const AuthGateScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);

    return authState.when(
      data: (token) {
        if (token != null && token.isNotEmpty) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.go('/home');
          });
          return const SizedBox();
        } else {
          return const LoginScreen();
        }
      },
      error: (err, stack) => Center(child: Text('Error: $err')),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
