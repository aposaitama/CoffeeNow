import 'package:bot_toast/bot_toast.dart';
import 'package:coffee_now/di/service_locator.dart';
import 'package:coffee_now/models/hive_models/basket_hive_item_model/basket_hive_item_model.dart';
import 'package:coffee_now/models/hive_models/basket_hive_model.dart/basket_hive_model.dart';
import 'package:coffee_now/models/hive_models/coffee_shop_image_hive_model/coffee_shop_image_hive_model.dart';
import 'package:coffee_now/models/hive_models/instructions_elem_hive_model/instructions_elem_hive_model.dart';
import 'package:coffee_now/models/hive_models/products_instruction_hive_model/products_instruction_hive_model.dart';
import 'package:coffee_now/models/hive_models/search_history_hive_model/search_history_hive_model.dart';
import 'package:coffee_now/navigation/app_navigation.dart';
import 'package:coffee_now/navigation/cubit/navigation_cubit.dart';
import 'package:coffee_now/screens/add_to_basket/provider/add_to_hive_basket_box_provider.dart';
import 'package:coffee_now/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  await Hive.initFlutter();
  Hive.registerAdapter(SearchHistoryHiveModelAdapter()); //1
  Hive.registerAdapter(ProductInstructionHiveModelAdapter());
  Hive.registerAdapter(InstructionsElemHiveModelAdapter()); //4
  Hive.registerAdapter(BasketItemHiveModelAdapter()); //2
  Hive.registerAdapter(CoffeeShopImageHiveModelAdapter()); //3
  Hive.registerAdapter(BasketHiveModelAdapter()); //3

  await Hive.openBox<SearchHistoryHiveModel>('userSearchHistory');
  await Hive.openBox<BasketHiveModel>('userBasket');

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => NavigationCubit()),
      ],
      child: const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: BotToastInit(),

      title: 'Flutter Demo',
      theme: lightMode,
      darkTheme: dartMode,
      routerConfig: AppRouter().createRouter(context),
      // home: const HomeScreen(),
    );
  }
}
