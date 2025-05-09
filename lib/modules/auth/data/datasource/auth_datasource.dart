import 'package:cardinal_sdk/auth/authentication_process_telecom_type.dart';
import 'package:cardinal_sdk/auth/authentication_process_template_parameters.dart';
import 'package:cardinal_sdk/auth/captcha_options.dart';
import 'package:cardinal_sdk/cardinal_sdk.dart';
import 'package:cardinal_sdk/options/storage_options.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final String specId = dotenv.env['SPEC_ID']!;
final String processId = dotenv.env['PROCESS_ID']!;

class AuthDatasource {
  Future<CardinalSdk> registerAndLogin({
    required String email,
    String? firstName,
    String? lastName,
    required String captcha,
  }) async {
    // Démarrer le processus d'authentification
    final authStep = await CardinalSdk.initializeWithProcess(
      null, // Application ID
      "https://api.icure.cloud", // Base URL
      "https://msg-gw.icure.cloud", // Message Gateway URL
      specId, // External services spec ID
      processId, // Registration process ID
      AuthenticationProcessTelecomType.email, // Type de communication
      email, // Adresse email de l'utilisateur
      CaptchaOptions.KerberusDelegated(), // Options captcha
      StorageOptions.PlatformDefault, // Options de stockage
      authenticationProcessTemplateParameters:
          AuthenticationProcessTemplateParameters(
            firstName: firstName,
            lastName: lastName,
          ),
    );

    // À ce stade, un code de validation a été envoyé à l'adresse email
    // Vous devez implémenter une UI pour que l'utilisateur entre ce code
    // Par exemple :
    // final validationCode = await showValidationCodeDialog();

    // Pour l'exemple, nous allons simuler l'entrée d'un code
    const validationCode = "123456"; // À remplacer par une véritable UI

    // Compléter l'authentification avec le code de validation
    return await authStep.completeAuthentication(validationCode);
  }
}
