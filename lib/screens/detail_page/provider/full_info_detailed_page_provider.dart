import 'package:coffee_now/models/coffee_shop/coffee_shop_model.dart';
import 'package:coffee_now/models/detailed_coffee_shop/detailed_coffee_shop_model.dart';
import 'package:coffee_now/screens/detail_page/provider/detail_page_provider/detail_page_provider.dart';
import 'package:coffee_now/screens/detail_page/provider/shop_basic_info_provider/shop_basic_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'full_info_detailed_page_provider.g.dart';

@riverpod
Future<(List<CoffeeShopModel>, DetailedCoffeeShopModel?)> fetchCoffeeShopData(
  Ref ref,
  String coffeeShopID,
) async {
  final basicInfoFuture =
      ref.watch(fetchConcreteCoffeeShopProvider(coffeeShopID).future);
  final detailsFuture =
      ref.watch(fetchDetailedCoffeeShopProvider(coffeeShopID).future);

  final results = await Future.wait([basicInfoFuture, detailsFuture]);

  return (
    results[0] as List<CoffeeShopModel>,
    results[1] as DetailedCoffeeShopModel?
  );
}
