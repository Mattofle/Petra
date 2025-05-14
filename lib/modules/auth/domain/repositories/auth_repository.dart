import 'package:cardinal_sdk/cardinal_sdk.dart';
import 'package:petra/modules/auth/domain/entities/auth_user_entity.dart';

abstract class AuthRepository {
  Future<CardinalSdk> initializeSdk({
    required email,
    required String token,
  });

  Future<AuthUserEntity> login({
    required String email,
    required String code,
  });

  Future<AuthUserEntity> register({
    required String email,
    required String firstName,
    required String lastName,
  });
}