import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kohi/features/auth/auth.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
// @JsonSerializable(fieldRename: FieldRename.snake)
abstract class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    required String uuid,
    required String name,
    required String email,
    required String phoneNumber,
    required int point,
    required String createdAt,
    required String updatedAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

  User toEntity({required String token}) => User(
    uuid: uuid,
    name: name,
    email: email,
    phoneNumber: phoneNumber,
    point: point,
    createdAt: createdAt,
    updatedAt: updatedAt,
    token: token,
  );
}
