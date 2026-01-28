import 'package:kohi/features/auth/auth.dart';

class AuthUsecase {
  AuthUsecase(this.repo);
  final AuthRepository repo;

  Future<User?> login({required String email, required String password}) async {
    return await repo.login(email: email, password: password);
  }

  Future<User?> register({required String name, required String email, required String password, required String phoneNumber}) async {
    return await repo.register(email: email, name: name, password: password, phoneNumber: phoneNumber);
  }
}
