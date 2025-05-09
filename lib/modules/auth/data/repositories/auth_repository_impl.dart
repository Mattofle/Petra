import 'package:cardinal_sdk/cardinal_sdk.dart';
import 'package:petra/modules/auth/data/datasource/auth_datasource.dart';
import 'package:petra/modules/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._authDatasource);
  final AuthDatasource _authDatasource;

  @override
  Future<CardinalSdk> initializeSdk({
    required email,
    required String captcha,
    String? firstName,
    String? lastName,
  }) async {
    try {
      return _authDatasource.registerAndLogin(
        email: email,
        captcha: captcha,
        firstName: firstName,
        lastName: lastName,
      );
    } catch (e) {
      rethrow;
    }
  }
}
