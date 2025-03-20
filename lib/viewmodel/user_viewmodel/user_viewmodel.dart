import 'package:coffee_now/models/user/user_model.dart';
import 'package:coffee_now/screens/home_screen/user_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final userViewModelProvider = Provider<UserModel?>((ref) {
  return ref.watch(userProvider).value;
});
