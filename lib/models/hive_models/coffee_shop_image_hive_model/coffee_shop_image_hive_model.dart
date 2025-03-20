import 'package:coffee_now/models/detailed_coffee_shop/detailed_coffee_shop_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'coffee_shop_image_hive_model.g.dart';

@HiveType(typeId: 5)
class CoffeeShopImageHiveModel {
  @HiveField(0)
  final String url;

  CoffeeShopImageHiveModel({
    required this.url,
  });

  // Фабричний метод для конвертації з звичайної моделі в модель Hive
  factory CoffeeShopImageHiveModel.fromCoffeeShopImage(CoffeeShopImage image) {
    return CoffeeShopImageHiveModel(
      url: image.url,
    );
  }

  // Метод для конвертації моделі Hive в звичайну модель
  CoffeeShopImage toCoffeeShopImage() {
    return CoffeeShopImage(
      url: url,
    );
  }
}
