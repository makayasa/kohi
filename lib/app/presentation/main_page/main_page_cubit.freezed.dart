// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MainPageCubitState {

 int get pageIndex;
/// Create a copy of MainPageCubitState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainPageCubitStateCopyWith<MainPageCubitState> get copyWith => _$MainPageCubitStateCopyWithImpl<MainPageCubitState>(this as MainPageCubitState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainPageCubitState&&(identical(other.pageIndex, pageIndex) || other.pageIndex == pageIndex));
}


@override
int get hashCode => Object.hash(runtimeType,pageIndex);

@override
String toString() {
  return 'MainPageCubitState(pageIndex: $pageIndex)';
}


}

/// @nodoc
abstract mixin class $MainPageCubitStateCopyWith<$Res>  {
  factory $MainPageCubitStateCopyWith(MainPageCubitState value, $Res Function(MainPageCubitState) _then) = _$MainPageCubitStateCopyWithImpl;
@useResult
$Res call({
 int pageIndex
});




}
/// @nodoc
class _$MainPageCubitStateCopyWithImpl<$Res>
    implements $MainPageCubitStateCopyWith<$Res> {
  _$MainPageCubitStateCopyWithImpl(this._self, this._then);

  final MainPageCubitState _self;
  final $Res Function(MainPageCubitState) _then;

/// Create a copy of MainPageCubitState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pageIndex = null,}) {
  return _then(_self.copyWith(
pageIndex: null == pageIndex ? _self.pageIndex : pageIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MainPageCubitState].
extension MainPageCubitStatePatterns on MainPageCubitState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _PageIndex value)?  pageIndex,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageIndex() when pageIndex != null:
return pageIndex(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _PageIndex value)  pageIndex,}){
final _that = this;
switch (_that) {
case _PageIndex():
return pageIndex(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _PageIndex value)?  pageIndex,}){
final _that = this;
switch (_that) {
case _PageIndex() when pageIndex != null:
return pageIndex(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int pageIndex)?  pageIndex,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageIndex() when pageIndex != null:
return pageIndex(_that.pageIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int pageIndex)  pageIndex,}) {final _that = this;
switch (_that) {
case _PageIndex():
return pageIndex(_that.pageIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int pageIndex)?  pageIndex,}) {final _that = this;
switch (_that) {
case _PageIndex() when pageIndex != null:
return pageIndex(_that.pageIndex);case _:
  return null;

}
}

}

/// @nodoc


class _PageIndex implements MainPageCubitState {
  const _PageIndex({this.pageIndex = 0});
  

@override@JsonKey() final  int pageIndex;

/// Create a copy of MainPageCubitState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageIndexCopyWith<_PageIndex> get copyWith => __$PageIndexCopyWithImpl<_PageIndex>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageIndex&&(identical(other.pageIndex, pageIndex) || other.pageIndex == pageIndex));
}


@override
int get hashCode => Object.hash(runtimeType,pageIndex);

@override
String toString() {
  return 'MainPageCubitState.pageIndex(pageIndex: $pageIndex)';
}


}

/// @nodoc
abstract mixin class _$PageIndexCopyWith<$Res> implements $MainPageCubitStateCopyWith<$Res> {
  factory _$PageIndexCopyWith(_PageIndex value, $Res Function(_PageIndex) _then) = __$PageIndexCopyWithImpl;
@override @useResult
$Res call({
 int pageIndex
});




}
/// @nodoc
class __$PageIndexCopyWithImpl<$Res>
    implements _$PageIndexCopyWith<$Res> {
  __$PageIndexCopyWithImpl(this._self, this._then);

  final _PageIndex _self;
  final $Res Function(_PageIndex) _then;

/// Create a copy of MainPageCubitState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pageIndex = null,}) {
  return _then(_PageIndex(
pageIndex: null == pageIndex ? _self.pageIndex : pageIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
