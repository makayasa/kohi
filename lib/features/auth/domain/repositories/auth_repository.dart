import 'package:kohi/features/auth/auth.dart';

abstract class AuthRepository {
  Future<User?> login({required String email, required String password});
  Future<User?> register({required String email, required String name, required String password, required String phoneNumber});
  Future<void> logout();
  Future<User?> checkSession();
}
