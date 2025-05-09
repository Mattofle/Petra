import 'package:cardinal_sdk/auth/authentication_method.dart';
import 'package:cardinal_sdk/auth/credentials.dart';
import 'package:cardinal_sdk/cardinal_sdk.dart';
import 'package:cardinal_sdk/options/sdk_options.dart';
import 'package:cardinal_sdk/options/storage_options.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petra/modules/auth/auth_di.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_controller.g.dart';

final String captcha = dotenv.env['KERBERUS_KEY']!;

// État du formulaire d'inscription
class RegisterState {
  final String firstName;
  final String lastName;
  final String email;
  final bool isLoading;
  final String? errorMessage;

  RegisterState({
    this.firstName = '',
    this.lastName = '',
    this.email = '',
    this.isLoading = false,
    this.errorMessage,
  });

  RegisterState copyWith({
    String? firstName,
    String? lastName,
    String? email,
    bool? isLoading,
    String? errorMessage,
  }) {
    return RegisterState(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
}

// Contrôleur pour gérer la logique d'inscription
@riverpod
class RegisterController extends _$RegisterController {
  @override
  RegisterState build() {
    return RegisterState();
  }

  void setFirstName(String firstName) {
    state = state.copyWith(firstName: firstName);
  }

  void setLastName(String lastName) {
    state = state.copyWith(lastName: lastName);
  }

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  Future<void> register() async {
    if (state.firstName.isEmpty || state.lastName.isEmpty || state.email.isEmpty) {
      state = state.copyWith(errorMessage: 'Veuillez remplir tous les champs');
      return;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      // Simuler une attente d'API
      await Future.delayed(const Duration(seconds: 2));

      // TODO: Implémenter la logique réelle d'inscription avec votre backend
      print('------------------------------------------------------------------------------------');
      print('captcha: $captcha');
      print('------------------------------------------------------------------------------------');
      final sdk = await ref.read(initializeSdkProvider).call(
        email: state.email,
        firstName: state.firstName,
        lastName: state.lastName,
        captcha: captcha,
      );
      print('------------------------------------------------------------------------------------');
      print('SDK initialized: $sdk');
      print('------------------------------------------------------------------------------------');

      state = state.copyWith(isLoading: false);
      // Succès de l'inscription
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: 'Erreur lors de l\'inscription: ${e.toString()}',
      );
    }
  }
}