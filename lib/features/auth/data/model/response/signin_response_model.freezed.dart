// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SigninResponseModel {

 int get status; String get message; String get token; UserModel get user;
/// Create a copy of SigninResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SigninResponseModelCopyWith<SigninResponseModel> get copyWith => _$SigninResponseModelCopyWithImpl<SigninResponseModel>(this as SigninResponseModel, _$identity);

  /// Serializes this SigninResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SigninResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,token,user);

@override
String toString() {
  return 'SigninResponseModel(status: $status, message: $message, token: $token, user: $user)';
}


}

/// @nodoc
abstract mixin class $SigninResponseModelCopyWith<$Res>  {
  factory $SigninResponseModelCopyWith(SigninResponseModel value, $Res Function(SigninResponseModel) _then) = _$SigninResponseModelCopyWithImpl;
@useResult
$Res call({
 int status, String message, String token, UserModel user
});


$UserModelCopyWith<$Res> get user;

}
/// @nodoc
class _$SigninResponseModelCopyWithImpl<$Res>
    implements $SigninResponseModelCopyWith<$Res> {
  _$SigninResponseModelCopyWithImpl(this._self, this._then);

  final SigninResponseModel _self;
  final $Res Function(SigninResponseModel) _then;

/// Create a copy of SigninResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? token = null,Object? user = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}
/// Create a copy of SigninResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [SigninResponseModel].
extension SigninResponseModelPatterns on SigninResponseModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SigninResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SigninResponseModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SigninResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _SigninResponseModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SigninResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _SigninResponseModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String message,  String token,  UserModel user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SigninResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.token,_that.user);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String message,  String token,  UserModel user)  $default,) {final _that = this;
switch (_that) {
case _SigninResponseModel():
return $default(_that.status,_that.message,_that.token,_that.user);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String message,  String token,  UserModel user)?  $default,) {final _that = this;
switch (_that) {
case _SigninResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.token,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SigninResponseModel implements SigninResponseModel {
  const _SigninResponseModel({required this.status, required this.message, required this.token, required this.user});
  factory _SigninResponseModel.fromJson(Map<String, dynamic> json) => _$SigninResponseModelFromJson(json);

@override final  int status;
@override final  String message;
@override final  String token;
@override final  UserModel user;

/// Create a copy of SigninResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SigninResponseModelCopyWith<_SigninResponseModel> get copyWith => __$SigninResponseModelCopyWithImpl<_SigninResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SigninResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SigninResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.token, token) || other.token == token)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,token,user);

@override
String toString() {
  return 'SigninResponseModel(status: $status, message: $message, token: $token, user: $user)';
}


}

/// @nodoc
abstract mixin class _$SigninResponseModelCopyWith<$Res> implements $SigninResponseModelCopyWith<$Res> {
  factory _$SigninResponseModelCopyWith(_SigninResponseModel value, $Res Function(_SigninResponseModel) _then) = __$SigninResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int status, String message, String token, UserModel user
});


@override $UserModelCopyWith<$Res> get user;

}
/// @nodoc
class __$SigninResponseModelCopyWithImpl<$Res>
    implements _$SigninResponseModelCopyWith<$Res> {
  __$SigninResponseModelCopyWithImpl(this._self, this._then);

  final _SigninResponseModel _self;
  final $Res Function(_SigninResponseModel) _then;

/// Create a copy of SigninResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? token = null,Object? user = null,}) {
  return _then(_SigninResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}

/// Create a copy of SigninResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
