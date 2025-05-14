import 'package:cardinal_sdk/cardinal_sdk.dart';
import 'package:petra/modules/auth/data/datasource/auth_datasource.dart';
import 'package:petra/modules/auth/domain/entities/auth_user_entity.dart';
import 'package:petra/modules/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._authDatasource);
  final AuthDatasource _authDatasource;

  @override
  Future<CardinalSdk> initializeSdk({
    required email,
    required String token,
  }) async {
    try {
      return _authDatasource.registerAndLogin(
        email: email,
        token: token,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<AuthUserEntity> login({required String email, required String code}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<AuthUserEntity> register({required String email, required String firstName, required String lastName}) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
