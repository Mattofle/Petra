import 'package:cardinal_sdk/auth/authentication_method.dart';
import 'package:cardinal_sdk/auth/credentials.dart';
import 'package:cardinal_sdk/cardinal_sdk.dart';
import 'package:cardinal_sdk/options/sdk_options.dart';
import 'package:cardinal_sdk/options/storage_options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:petra/modules/auth/auth_di.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_controller.g.dart';



// État du formulaire d'inscription
class RegisterState {
  final String name;
  final String email;
  final bool isLoading;
  final String? errorMessage;

  RegisterState({
    this.name = '',
    this.email = '',
    this.isLoading = false,
    this.errorMessage,
  });

  RegisterState copyWith({
    String? name,
    String? email,
    bool? isLoading,
    String? errorMessage,
  }) {
    return RegisterState(
      name: name ?? this.name,
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

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  Future<void> register() async {
    if (state.name.isEmpty || state.email.isEmpty) {
      state = state.copyWith(errorMessage: 'Veuillez remplir tous les champs');
      return;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      // Simuler une attente d'API
      await Future.delayed(const Duration(seconds: 2));

      // TODO: Implémenter la logique réelle d'inscription avec votre backend

      final sdk = await ref.read(initializeSdkProvider).call(
        state.email,
        state.name,
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
