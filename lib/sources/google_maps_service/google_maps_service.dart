import 'package:coffee_now/models/google_maps_models/latlong_model/lat_long_model.dart';
import 'package:coffee_now/models/google_maps_models/location_model/location_model.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class GoogleMapsService {
  final Dio _dio;

  GoogleMapsService()
      : _dio = Dio(BaseOptions(
          baseUrl: 'https://maps.googleapis.com/maps/api',
          headers: {
            'Content-Type': 'application/json',
          },
        )) {
    _dio.interceptors.add(PrettyDioLogger(
      error: true,
      compact: true,
      responseBody: false,
    ));
  }

  Future<GeocodeResponse?> getNavigationPoints(String address) async {
    try {
      final response = await _dio.get('/geocode/json', queryParameters: {
        'address': address,
        'key': 'AIzaSyBGHhRFdiPJxDxpX81Up_LhS71FQr4nJLY',
      });

      return GeocodeResponse.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }

  Future<LocationResponse?> getLocation(String lat, String lng) async {
    try {
      final response = await _dio.get('/geocode/json', queryParameters: {
        'latlng': '$lat,$lng',
        'key': 'AIzaSyBGHhRFdiPJxDxpX81Up_LhS71FQr4nJLY',
        'location_type': 'ROOFTOP'
      });

      return LocationResponse.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }

  Future<String?> getDistance(
    String latOrigin,
    String lngOrigin,
    String latShop,
    String lngShop,
  ) async {
    try {
      final response = await _dio.get('/distancematrix/json', queryParameters: {
        'origins': '$latOrigin,$lngOrigin',
        'destinations': '$latShop,$lngShop',
        'key': 'AIzaSyBGHhRFdiPJxDxpX81Up_LhS71FQr4nJLY',
      });

      return response.data['rows'][0]['elements'][0]['distance']['value']
          .toString();
    } catch (e) {
      return '';
    }
  }
}
