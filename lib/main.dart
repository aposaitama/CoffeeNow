import 'package:coffee_now/navigation/app_navigation.dart';
import 'package:coffee_now/navigation/cubit/navigation_cubit.dart';
import 'package:coffee_now/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(create: (_) => NavigationCubit()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: lightMode,
      darkTheme: dartMode,
      routerConfig: AppRouter().createRouter(context),
      // home: const HomeScreen(),
    );
  }
}
