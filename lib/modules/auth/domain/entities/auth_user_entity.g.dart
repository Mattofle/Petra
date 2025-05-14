// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthUserEntity _$AuthUserEntityFromJson(Map<String, dynamic> json) =>
    _AuthUserEntity(
      email: json['email'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$AuthUserEntityToJson(_AuthUserEntity instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
