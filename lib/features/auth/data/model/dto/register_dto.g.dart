// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegisterDto _$RegisterDtoFromJson(Map<String, dynamic> json) => _RegisterDto(
  name: json['name'] as String,
  email: json['email'] as String,
  password: json['password'] as String,
  phoneNumber: json['phone_number'] as String,
);

Map<String, dynamic> _$RegisterDtoToJson(_RegisterDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone_number': instance.phoneNumber,
    };
