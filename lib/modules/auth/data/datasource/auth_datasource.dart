import 'package:cardinal_sdk/auth/authentication_method.dart';
import 'package:cardinal_sdk/auth/credentials.dart';
import 'package:cardinal_sdk/cardinal_sdk.dart';
import 'package:cardinal_sdk/options/storage_options.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final String specId = dotenv.env['SPEC_ID']!;
final String processId = dotenv.env['PROCESS_ID']!;

class AuthDatasource {
  Future<CardinalSdk> registerAndLogin({
    required String email,
    required String token,
  }) async {
    return CardinalSdk.initialize(
      null,
      "https://api.icure.cloud",
      AuthenticationMethod.UsingCredentials(
        Credentials.UsernameLongToken(email, token),
      ),
      StorageOptions.PlatformDefault,
    );
  }
}
