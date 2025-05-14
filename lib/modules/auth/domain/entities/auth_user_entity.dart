
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user_entity.freezed.dart';
part 'auth_user_entity.g.dart';

@freezed
class AuthUserEntity with _$AuthUserEntity {
  const factory AuthUserEntity({
    required String email,
    required String firstName,
    required String lastName,
  }) = _AuthUserEntity;
  
  factory AuthUserEntity.fromJson(Map<String, dynamic> json) => _$AuthUserEntityFromJson(json);
  
   @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}


