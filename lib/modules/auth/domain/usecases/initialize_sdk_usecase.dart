import 'dart:async';

import 'package:cardinal_sdk/cardinal_sdk.dart';
import 'package:petra/modules/auth/domain/repositories/auth_repository.dart';

class InitializeSdkUsecase {
  InitializeSdkUsecase(this._authRepository);
  final AuthRepository _authRepository;


  FutureOr<CardinalSdk> call({
    required email,
    required String captcha,
    String? firstName,
    String? lastName,
  }) async {
    final sdk = await _authRepository.initializeSdk(
      email: email,
      captcha: captcha,
      firstName: firstName,
      lastName: lastName,
    );
    return sdk;
  }
}