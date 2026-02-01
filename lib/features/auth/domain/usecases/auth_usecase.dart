import 'package:kohi/features/auth/auth.dart';

class AuthUsecase {
  AuthUsecase(this._repo);
  final AuthRepository _repo;

  Future<User?> login({required String email, required String password}) async {
    return await _repo.login(email: email, password: password);
  }

  Future<User?> register({required String name, required String email, required String password, required String phoneNumber}) async {
    return await _repo.register(email: email, name: name, password: password, phoneNumber: phoneNumber);
  }

  Future<bool> checkEmail({required String email}) async {
    return await _repo.checkEmail(email: email);
  }
}
