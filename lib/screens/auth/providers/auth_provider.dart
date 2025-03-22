import 'package:coffee_now/sources/strapi_service/strapi_api_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
Future<String?> storedToken(Ref ref) async {
  final auth = ref.watch(apiServiceProvider);
  return auth.getToken();
}

@riverpod
class AuthNotifier extends _$AuthNotifier {
  @override
  Future<String?> build() async {
    return ref.watch(storedTokenProvider.future);
  }

  Future<void> login(String email, String password) async {
    final auth = ref.watch(apiServiceProvider);
    final token = await auth.login(email, password);
    state = AsyncData(token);
  }

  Future<void> register(String username, String email, String password,
      String phoneNumber) async {
    final auth = ref.watch(apiServiceProvider);
    final token = await auth.register(username, email, password, phoneNumber);
    state = AsyncData(token);
  }

  /// **Вихід із системи**
  Future<void> logout() async {
    final auth = ref.watch(apiServiceProvider);
    await auth.removeToken();
    state = const AsyncData(null);
  }
}
