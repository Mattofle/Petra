import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:petra/modules/auth/presentation/controllers/form_validation_controller.dart';
import 'package:petra/modules/auth/presentation/controllers/login_controller.dart';
import 'package:petra/navigation/navigation_service.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailOrPhoneController = TextEditingController();
  final _codeController = TextEditingController();

  String? _errorText;

  @override
  void dispose() {
    _emailOrPhoneController.dispose();
    _codeController.dispose();
    super.dispose();
  }
  
  void validateForm() {
    final emailOrPhone = _emailOrPhoneController.text;
    final code = _codeController.text;

    if (emailOrPhone.isEmpty) {
      setState(() {
        _errorText = 'Email or Phone Number is required';
      });
    } else if (code.isEmpty) {
      setState(() {
        _errorText = 'Code is required';
      });
    } else {
      setState(() {
        _errorText = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginControllerProvider);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 200,
              width: 200,
            ),

            const SizedBox(height: 30),

            const Text(
              'Login',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            if (loginState.errorMessage != null)
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  loginState.errorMessage!,
                  style: TextStyle(color: Colors.red.shade900),
                ),
              ),
            if (_errorText != null)
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  _errorText!,
                  style: TextStyle(color: Colors.red.shade900),
                ),
              ),

            // Email ou numéro de téléphone
            FLabel(
              axis: Axis.vertical,
              label: const Text('Email or Phone Number'),
              child: TextField(
                controller: _emailOrPhoneController,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) => ref
                    .read(loginControllerProvider.notifier)
                    .setEmailOrPhone(value),
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  filled: true,
                  fillColor: Color(0xFFF5F5F5),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Code
            FLabel(
              axis: Axis.vertical,
              label: const Text('Code'),
              child: TextField(
                controller: _codeController,
                obscureText: true,
                onChanged: (value) {
                  final error = FormValidationController.validatecode(value);
                  setState(() {
                      _errorText = error;
                    }); 
                  },
                
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  filled: true,
                  fillColor: Color(0xFFF5F5F5),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Bouton de connexion
            SizedBox(
              width: double.infinity,
              child: FButton(
                onPress: loginState.isLoading
                    ? null
                    : () => ref
                        .read(loginControllerProvider.notifier)
                        .login(),
                child: loginState.isLoading
                    ? const CircularProgressIndicator()
                    : const Text(
                        'Login',
                        style: TextStyle(fontSize: 16),
                      ),
              ),
            ),

            const SizedBox(height: 20),

            // Lien vers la page d'inscription
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Sign up',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = loginState.isLoading
                            ? null
                            : () {
                                // Navigation vers l'écran d'inscription
                                // context.go('/register'); // Utilisation de go_router
                                ref.read(navigationServiceProvider).goToRegister();
                              },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}