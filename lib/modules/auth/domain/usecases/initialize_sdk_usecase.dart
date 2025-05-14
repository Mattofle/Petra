import 'dart:async';

import 'package:cardinal_sdk/cardinal_sdk.dart';
import 'package:petra/modules/auth/domain/repositories/auth_repository.dart';

class InitializeSdkUsecase {
  InitializeSdkUsecase(this._authRepository);
  final AuthRepository _authRepository;


  FutureOr<CardinalSdk> call({
    required email,
    required String token,
  }) async {
    final sdk = await _authRepository.initializeSdk(
      email: email,
      token: token,
    );
    return sdk;
  }
}