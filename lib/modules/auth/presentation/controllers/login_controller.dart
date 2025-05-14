import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';

final String captcha = dotenv.env['KERBERUS_KEY']!;

// État du formulaire de connexion
class LoginState {
  final String emailOrPhone;
  final String code;
  final bool isLoading;
  final String? errorMessage;

  LoginState({
    this.emailOrPhone = '',
    this.code = '',
    this.isLoading = false,
    this.errorMessage,
  });

  LoginState copyWith({
    String? emailOrPhone,
    String? code,
    bool? isLoading,
    String? errorMessage,
  }) {
    return LoginState(
      emailOrPhone: emailOrPhone ?? this.emailOrPhone,
      code: code ?? this.code,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
}

@riverpod
class LoginController extends _$LoginController {
  @override
  LoginState build() {
    return LoginState();
  }

  void setEmailOrPhone(String emailOrPhone) {
    state = state.copyWith(emailOrPhone: emailOrPhone);
  }

  void setCode(String code) {
    state = state.copyWith(code: code);
  }

  Future<void> login() async {
    if (state.emailOrPhone.isEmpty || state.code.isEmpty) {
      state = state.copyWith(errorMessage: 'please fill all fields');
      return;
    }

    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      // final sdk = await ref.read(initializeSdkProvider).call(
      //   email: state.emailOrPhone,
      //   token: captcha,
      // );

      // Ici vous pourriez ajouter votre logique d'authentification
      // Par exemple, vérifier le code avec une API

      state = state.copyWith(isLoading: false);
      // Succès de la connexion
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: 'Erreur lors de la connexion: ${e.toString()}',
      );
    }
  }
}
