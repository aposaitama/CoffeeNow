import 'package:coffee_now/di/service_locator.dart';
import 'package:coffee_now/models/advert_banner/advert_banner_model.dart';
import 'package:coffee_now/models/brand_image/brand_image_model.dart';
import 'package:coffee_now/models/coffee_shop/coffee_shop_model.dart';
import 'package:coffee_now/models/detailed_coffee_shop/detailed_coffee_shop_model.dart';
import 'package:coffee_now/models/detailed_product/detailed_product_model.dart';
import 'package:coffee_now/models/categories/categories_model.dart';
import 'package:coffee_now/models/google_maps_models/latlong_model/lat_long_model.dart';
import 'package:coffee_now/models/user/user_model.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  final SharedPreferences prefs = locator<SharedPreferences>();
  final Dio _dio;

  ApiService()
      : _dio = Dio(BaseOptions(
          baseUrl: 'http://localhost:1337/api',
          headers: {
            'Authorization':
                'Bearer ff51cf576794a6b826846d1a65b553d1efa6e934b1ebe875c83445a4f515f9b5b229b9f891a023a0aaa17b117a15b5c88fcdedf68b5280db65d24c3013ecd9f919f53e2a02e942dfc34c117bff294ca2a718f96c83e22e44fe1685e332ff10bafd8d4da41979d1ffa6cfb2ebb7e4e060112122ca64e0aca67f15bd6e0eb58368',
            'Content-Type': 'application/json',
          },
        )) {
    _dio.interceptors.add(PrettyDioLogger(
      error: true,
      compact: true,
      responseBody: false,
    ));
  }

  //save token if user successfully auth
  Future<void> saveToken(String token) async {
    await prefs.setString('jwt_token', token);
  }

  //delete token when logout
  Future<void> removeToken() async {
    await prefs.remove('jwt_token');
  }

  //get jwt-token
  Future<String?> getToken() async {
    return prefs.getString('jwt_token');
  }

  //register
  Future<String> register(
    String fullName,
    String email,
    String password,
    String phoneNumber,
  ) async {
    try {
      final response = await _dio.post('/auth/local/register', data: {
        'username': fullName,
        'email': email,
        'password': password,
      });
      final token = response.data['jwt'];
      await saveToken(token);

      return token;
    } catch (e) {
      return '';
    }
  }

  //login
  Future<String> login(
    String email,
    String password,
  ) async {
    try {
      final response = await _dio.post('/auth/local',
          data: {'identifier': email, 'password': password});

      final token = response.data['jwt'];
      await saveToken(token);

      return token;
    } catch (e) {
      return '';
    }
  }

  Future<List<BrandImageModel>> getPopularBrands() async {
    try {
      final response = await _dio.get('/popular-brands', queryParameters: {
        'populate': '*',
      });

      final List<dynamic> data = response.data['data'] ?? [];

      return data.map((json) => BrandImageModel.fromJson(json)).toList();
    } catch (e) {
      return [];
    }
  }

  Future<List<CoffeeShopProducts>> getSearchQueryProducts(String query) async {
    try {
      final response =
          await _dio.get('/coffee-shop-products', queryParameters: {
        'filters[productName][\$startsWith]': query,
        'populate': '*',
      });

      final List<dynamic> data = response.data['data'] ?? [];

      return data.map((json) => CoffeeShopProducts.fromJson(json)).toList();
    } catch (e) {
      return [];
    }
  }

  Future<CategoriesModel?> getUserSearchHistory() async {
    try {
      final user = await getUser();

      final response =
          await _dio.get('/coffee-shop-categories', queryParameters: {
        'populate': '*',
      });

      final List<dynamic> data = response.data['data'] ?? [];

      final categoriesModel = CategoriesModel.fromJson({
        'categoryName':
            List<String>.from(data.map((item) => item['categoryName'])),
      });

      return categoriesModel;
    } catch (e) {
      return null;
    }
  }

  // Future<void> setUserSearchHistoryQuery() async {
  //   try {
  //     final user = await getUser();

  //     final response = await _dio.post('/search-models', queryParameters: {
  //       'populate': '*',
  //     });

  //     final List<dynamic> data = response.data['data'] ?? [];
  //   } catch (e) {}
  // }

  Future<List<AdvertBannerModel>> getAdvertBanned() async {
    try {
      final response = await _dio.get('/advert-banners', queryParameters: {
        'populate': '*',
      });

      final List<dynamic> data = response.data['data'] ?? [];

      return data.map((json) => AdvertBannerModel.fromJson(json)).toList();
    } catch (e) {
      return [];
    }
  }

  Future<List<CoffeeShopModel>> getCoffeeShop() async {
    try {
      final response = await _dio.get('/coffee-shops', queryParameters: {
        'populate': '*',
      });

      final List<dynamic> data = response.data['data'] ?? [];

      return data.map((json) => CoffeeShopModel.fromJson(json)).toList();
    } catch (e) {
      return [];
    }
  }

  Future<List<CoffeeShopModel>> getConcreteCoffeeShop(
      String coffeeShopID) async {
    try {
      final response = await _dio.get('/coffee-shops', queryParameters: {
        'filters[coffeeShopID][\$eq]': coffeeShopID,
        'populate': '*',
      });

      final List<dynamic> data = response.data['data'] ?? [];

      return data.map((json) => CoffeeShopModel.fromJson(json)).toList();
    } catch (e) {
      return [];
    }
  }

  Future<List<DetailedCoffeeShopModel>> getRecomendedItems() async {
    try {
      final response =
          await _dio.get('/coffee-shop-detaileds', queryParameters: {
        'populate': 'coffee_shop_categories.coffee_shop_products.productImage',
        'pagination[limit]': '1',
      });

      final List<dynamic> data = response.data['data'] ?? [];

      return data
          .map((json) => DetailedCoffeeShopModel.fromJson(json))
          .toList();
    } catch (e) {
      return [];
    }
  }

  Future<List<CoffeeShopProducts>> getFavoutireItems() async {
    try {
      final response =
          await _dio.get('/coffee-shop-products', queryParameters: {
        'filters[isInFavourite]': true,
        'populate': '*',
      });

      final List<dynamic> data = response.data['data'] ?? [];

      return data.map((json) => CoffeeShopProducts.fromJson(json)).toList();
    } catch (e) {
      return [];
    }
  }

  Future<void> toogleFavoutireItemStatus(
      String documentId, bool currentStatus) async {
    try {
      final response = await _dio.put(
        '/coffee-shop-products/$documentId',
        data: {
          "data": {
            "isInFavourite": !currentStatus,
          },
        },
      );
    } catch (e) {}
  }

  Future<String?> createAddressDocument(String lat, String lng) async {
    try {
      final response = await _dio.post(
        '/addresses',
        data: {
          "data": {
            "lat": lat,
            "lng": lng,
          }
        },
      );

      final String? id = response.data['data']['id']?.toString();

      return id;
    } catch (e) {
      return null;
    }
  }

  Future<String?> fetchCoffeeShopIDByProduct(String productID) async {
    try {
      final response =
          await _dio.get('/coffee-shop-detaileds', queryParameters: {
        'filters[coffee_shop_categories][coffee_shop_products][documentId][\$eq]':
            productID,
        'populate': 'coffee_shop_categories.coffee_shop_products'
      });

      final String? id = response.data['data'][0]['coffeeShopID']?.toString();

      return id;
    } catch (e) {
      return null;
    }
  }

  Future<double?> fetchDeliveryPrice() async {
    try {
      final response = await _dio.get('/delivery-prices', queryParameters: {});

      final double? deliveryPrice = response.data['data'][0]['pricePerKm'];

      return deliveryPrice;
    } catch (e) {
      return null;
    }
  }

  // Future<Map<String, String>?> fetchCoffeeShopDetailsByProduct(
  //     String productID) async {
  //   try {
  //     final response =
  //         await _dio.get('/coffee-shop-detaileds', queryParameters: {
  //       'filters[coffee_shop_categories][coffee_shop_products][documentId][\$eq]':
  //           productID,
  //       'populate': 'coffee_shop_categories.coffee_shop_products'
  //     });

  //     final String? shopID =
  //         response.data['data'][0]['coffeeShopID']?.toString();

  //     final shopResponse = awa

  //     if (shopID != null && shopName != null) {
  //       return {
  //         'shopID': shopID,
  //         'shopName': shopName,
  //       };
  //     } else {
  //       return null;
  //     }
  //   } catch (e) {
  //     return null;
  //   }
  // }

  Future<List?> fetchLocationConcreteShop(String coffeeShopID) async {
    try {
      final response = await _dio.get('/coffee-shops', queryParameters: {
        'filters[coffeeShopID][\$eq]': coffeeShopID,
        'populate': '*',
      });

      final String? lat = response.data['data'][0]['latitude']?.toString();
      final String? lng = response.data['data'][0]['longitude']?.toString();
      return [lat, lng];
    } catch (e) {
      print('Error creating address: $e');
      return null;
    }
  }

  Future<String?> connectAddressWithDoc(
    String addressDocID,
    String id,
  ) async {
    try {
      final response = await _dio.put(
        '/users/$id',
        data: {
          "addresses": {
            "connect": [addressDocID]
          }
        },
      );
      return response.data['id'].toString();
    } catch (e) {
      return null;
    }
  }

  Future<DetailedCoffeeShopModel?> getDetailedCoffeeShop(
    String coffeeShopID,
  ) async {
    try {
      final response = await _dio.get(
        '/coffee-shop-detaileds',
        queryParameters: {
          'filters[coffeeShopID][\$eq]': coffeeShopID,
          'populate':
              'coffee_shop_categories.coffee_shop_products.productImage',
        },
      );

      final List<dynamic> data = response.data['data'] ?? [];

      if (data.isEmpty) return null; // Повертаємо null, якщо нічого не знайдено

      return DetailedCoffeeShopModel.fromJson(data.first);
    } catch (e) {
      print('Error fetching coffee shop: $e');
      throw Exception('Failed to load coffee shop');
    }
  }

  // Future<CoffeeShopProducts?> getConcreteProduct(
  //   String documentID,
  // ) async {
  //   print(documentID);
  //   try {
  //     final response = await _dio.get(
  //       '/coffee-shop-products/$documentID',
  //       queryParameters: {
  //         'populate': '*',
  //       },
  //     );

  //     final Map<String, dynamic>? data = response.data['data'] ?? [];

  //     if (data == null) return null;

  //     return CoffeeShopProducts.fromJson(data);
  //   } catch (e) {
  //     print('Error fetching coffee shop: $e');
  //     throw Exception('Failed to load coffee shop');
  //   }
  // }

  Future<DetailedProductModel?> getConcreteProduct(
    String documentID,
  ) async {
    try {
      final response = await _dio.get(
        '/coffee-shop-products/$documentID',
        queryParameters: {
          'populate[]': 'productImage',
          'populate': 'instructions.instructions_elems',
        },
      );

      final Map<String, dynamic>? data = response.data['data'] ?? [];

      if (data == null) return null;

      return DetailedProductModel.fromJson(data);
    } catch (e) {
      throw Exception('Failed to load coffee shop');
    }
  }

  Future<CoffeeShopProducts?> getLightModelConcreteProduct(
    String documentID,
  ) async {
    try {
      final response = await _dio.get(
        '/coffee-shop-products/$documentID',
        queryParameters: {
          'populate[]': 'productImage',
          'populate': 'instructions.instructions_elems',
        },
      );

      final Map<String, dynamic>? data = response.data['data'] ?? [];

      if (data == null) return null;

      return CoffeeShopProducts.fromJson(data);
    } catch (e) {
      throw Exception('Failed to load coffee shop');
    }
  }

  Future<UserModel?> getUser() async {
    final token = await getToken();
    if (token == null) return null;

    try {
      final response = await _dio.get(
        '/users/me',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
        queryParameters: {
          'populate': '*',
        },
      );

      return UserModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }
}
