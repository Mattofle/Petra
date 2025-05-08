import 'package:cardinal_sdk/cardinal_sdk.dart';

abstract class AuthRepository {
  Future<CardinalSdk> initializeSdk(String email, String password);
}