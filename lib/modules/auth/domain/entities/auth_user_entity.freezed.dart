// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthUserEntity {

 String get email; String get firstName; String get lastName;
/// Create a copy of AuthUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthUserEntityCopyWith<AuthUserEntity> get copyWith => _$AuthUserEntityCopyWithImpl<AuthUserEntity>(this as AuthUserEntity, _$identity);

  /// Serializes this AuthUserEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthUserEntity&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,firstName,lastName);

@override
String toString() {
  return 'AuthUserEntity(email: $email, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class $AuthUserEntityCopyWith<$Res>  {
  factory $AuthUserEntityCopyWith(AuthUserEntity value, $Res Function(AuthUserEntity) _then) = _$AuthUserEntityCopyWithImpl;
@useResult
$Res call({
 String email, String firstName, String lastName
});




}
/// @nodoc
class _$AuthUserEntityCopyWithImpl<$Res>
    implements $AuthUserEntityCopyWith<$Res> {
  _$AuthUserEntityCopyWithImpl(this._self, this._then);

  final AuthUserEntity _self;
  final $Res Function(AuthUserEntity) _then;

/// Create a copy of AuthUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AuthUserEntity implements AuthUserEntity {
  const _AuthUserEntity({required this.email, required this.firstName, required this.lastName});
  factory _AuthUserEntity.fromJson(Map<String, dynamic> json) => _$AuthUserEntityFromJson(json);

@override final  String email;
@override final  String firstName;
@override final  String lastName;

/// Create a copy of AuthUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthUserEntityCopyWith<_AuthUserEntity> get copyWith => __$AuthUserEntityCopyWithImpl<_AuthUserEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthUserEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthUserEntity&&(identical(other.email, email) || other.email == email)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,firstName,lastName);

@override
String toString() {
  return 'AuthUserEntity(email: $email, firstName: $firstName, lastName: $lastName)';
}


}

/// @nodoc
abstract mixin class _$AuthUserEntityCopyWith<$Res> implements $AuthUserEntityCopyWith<$Res> {
  factory _$AuthUserEntityCopyWith(_AuthUserEntity value, $Res Function(_AuthUserEntity) _then) = __$AuthUserEntityCopyWithImpl;
@override @useResult
$Res call({
 String email, String firstName, String lastName
});




}
/// @nodoc
class __$AuthUserEntityCopyWithImpl<$Res>
    implements _$AuthUserEntityCopyWith<$Res> {
  __$AuthUserEntityCopyWithImpl(this._self, this._then);

  final _AuthUserEntity _self;
  final $Res Function(_AuthUserEntity) _then;

/// Create a copy of AuthUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? firstName = null,Object? lastName = null,}) {
  return _then(_AuthUserEntity(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
