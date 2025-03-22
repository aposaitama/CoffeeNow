import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:coffee_now/models/user/user_model.dart';

part 'user_provider.g.dart';

@riverpod
Future<UserModel?> user(Ref ref) async {
  final authService = ref.watch(apiServiceProvider);
  return authService.getUser();
}
