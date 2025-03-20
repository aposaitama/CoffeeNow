import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:coffee_now/sources/api_service.dart';

final apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService();
});
