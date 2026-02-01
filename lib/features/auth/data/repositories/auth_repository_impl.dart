import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kohi/core/constant.dart';
import 'package:kohi/core/network/dio_client.dart';
import 'package:kohi/core/network/environtment.dart';
import 'package:kohi/features/auth/auth.dart';
import 'package:kohi/features/auth/data/model/dto/login_dto.dart';
import 'package:kohi/features/auth/data/model/dto/register_dto.dart';
import 'package:kohi/features/auth/data/model/response/signin_response_model.dart';
import 'package:kohi/features/auth/data/model/response/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required this.dioClient, required this.storage});
  final DioClient dioClient;
  final FlutterSecureStorage storage;
  @override
  Future<User?> login({required String email, required String password}) async {
    try {
      final body = LoginDto(email: email, password: password);

      final res = await dioClient.post(
        '$baseUrl/user/signin',
        body: body.toJson(),
      );

      final signinRes = SigninResponseModel.fromJson(res.data);
      final user = signinRes.user.toEntity(token: signinRes.token);
      final temp = signinRes.user.toJson();

      temp['token'] = user.token;
      await storage.write(key: storageKeyUser, value: jsonEncode(temp));
      return user;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<User?> checkSession() async {
    final decode = await storage.read(key: storageKeyUser);
    if (decode == null) {
      return null;
    }
    final userJson = jsonDecode(decode);
    final userModel = UserModel.fromJson(userJson);
    final user = userModel.toEntity(token: userJson['token']);
    return user;
  }

  @override
  Future<User?> register({required String email, required String name, required String password, required String phoneNumber}) async {
    try {
      final body = RegisterDto(name: name, email: email, password: password, phoneNumber: phoneNumber);

      final res = await dioClient.post(
        '$baseUrl/user/signup',
        body: body.toJson(),
      );
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> logout() async {
    await storage.delete(key: storageKeyUser);
  }

  @override
  Future<bool> checkEmail({required String email}) async {
    try {
      logger.e(baseUrl);
      final res = await dioClient.post(
        '$baseUrl/user/check-email',
        body: {
          'email': email,
        },
      );
      print('hasil checkemail ${res.data}');
      return res.data['isRegistered'];
    } on DioException catch (e) {
      logger.e('error checkEmail $e');
      return false;
    }
     catch (e) {
      logger.e('error $e');
      return false;
    }
  }
}
