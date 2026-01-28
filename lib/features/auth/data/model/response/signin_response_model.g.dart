// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SigninResponseModel _$SigninResponseModelFromJson(Map<String, dynamic> json) =>
    _SigninResponseModel(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      token: json['token'] as String,
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SigninResponseModelToJson(
  _SigninResponseModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'token': instance.token,
  'user': instance.user,
};
