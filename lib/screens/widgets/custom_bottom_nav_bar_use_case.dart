import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:coffee_now/navigation/cubit/navigation_cubit.dart';
import 'package:coffee_now/screens/widgets/custom_bottom_nav_bar.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Custom Bottom Nav Bar', type: CustomBottomNavBar)
Widget customBottomNavBarUseCase(BuildContext context) {
  return BlocProvider(
    create: (context) => NavigationCubit(),
    child: const Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavBar(),
      body: Center(child: Text('Widgetbook Test Page')),
    ),
  );
}
