import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kohi/features/auth/data/model/response/user_model.dart';

part 'signin_response_model.freezed.dart';
part 'signin_response_model.g.dart';

@freezed
abstract class SigninResponseModel  with _$SigninResponseModel {
  const factory SigninResponseModel ({
    required int status,
    required String message,
    required String token,
    required UserModel user,
  }) = _SigninResponseModel;

  factory SigninResponseModel.fromJson(Map<String, dynamic> json) => _$SigninResponseModelFromJson(json);
}