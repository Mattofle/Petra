import 'package:cardinal_sdk/cardinal_sdk.dart';

abstract class AuthRepository {
  Future<CardinalSdk> initializeSdk({
    required email,
    required String captcha,
    String? firstName,
    String? lastName,
  });
}