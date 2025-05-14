import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:petra/modules/auth/auth_di.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_controller.g.dart';

final String captcha = dotenv.env['KERBERUS_KEY']!;

// État du formulaire d'inscription
class RegisterState {
  final String email;
  final String token;
  final bool isLoading;
  final String? errorMessage;

  RegisterState({
    this.email = '',
    this.token = '',
    this.isLoading = false,
    this.errorMessage,
  });

  RegisterState copyWith({
    String? email,
    String? token,
    bool? isLoading,
    String? errorMessage,
  }) {
    return RegisterState(
      email: email ?? this.email,
      token: token ?? this.token,
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

  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setToken(String token) {
    state = state.copyWith(token: token);
  }

  Future<void> register() async {
    if (state.email.isEmpty) {
      state = state.copyWith(errorMessage: 'Veuillez remplir tous les champs');
      return;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      // Simuler une attente d'API
      await Future.delayed(const Duration(seconds: 2));

      print(
        '------------------------------------------------------------------------------------',
      );
      print('captcha: $captcha');
      print(
        '------------------------------------------------------------------------------------',
      );
      final sdk = await ref
          .read(initializeSdkProvider)
          .call(email: state.email, token: captcha);
      print(
        '------------------------------------------------------------------------------------',
      );
      print('SDK initialized: $sdk');
      print(
        '------------------------------------------------------------------------------------',
      );

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
