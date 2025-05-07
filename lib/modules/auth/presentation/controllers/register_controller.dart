import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider pour gérer l'état de l'inscription
final registerControllerProvider = StateNotifierProvider<RegisterController, RegisterState>((ref) {
  return RegisterController();
});

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
class RegisterController extends StateNotifier<RegisterState> {
  RegisterController() : super(RegisterState());

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
