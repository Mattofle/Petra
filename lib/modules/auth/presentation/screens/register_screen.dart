import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:petra/modules/auth/presentation/controllers/register_controller.dart';
import 'package:petra/navigation/navigation_service.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _emailController = TextEditingController();
  final _tokenController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _tokenController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final registerState = ref.watch(registerControllerProvider);

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
              'Registration',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),

            if (registerState.errorMessage != null)
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  registerState.errorMessage!,
                  style: TextStyle(color: Colors.red.shade900),
                ),
              ),

            // First Name
            FLabel(
              axis: Axis.vertical,
              label: const Text('First Name'),
              child: TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                onChanged:
                    (value) => ref
                        .read(registerControllerProvider.notifier)
                        .setEmail(value),
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

            // Last Name
            FLabel(
              axis: Axis.vertical,
              label: const Text('Last Name'),
              child: TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                onChanged:
                    (value) => ref
                        .read(registerControllerProvider.notifier)
                        .setEmail(value),
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

            // email or phone number
            FLabel(
              axis: Axis.vertical,
              label: const Text('Email or Phone Number'),
              child: TextField(
                controller: _tokenController,
                onChanged:
                    (value) => ref
                        .read(registerControllerProvider.notifier)
                        .setToken(value),
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

            // Bouton d'inscription
            SizedBox(
              width: double.infinity,
              child: FButton(
                onPress:
                    registerState.isLoading
                        ? null
                        : () =>
                            ref
                                .read(registerControllerProvider.notifier)
                                .register(),
                child:
                    registerState.isLoading
                        ? const CircularProgressIndicator()
                        : const Text(
                          'Register',
                          style: TextStyle(fontSize: 16),
                        ),
              ),
            ),

            const SizedBox(height: 20),

            // Lien vers la page de connexion
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Log in',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer:
                          TapGestureRecognizer()
                            ..onTap =
                                registerState.isLoading
                                    ? null
                                    : () {
                                      // Navigation vers l'écran de connexion
                                      //context.go('/login'); // Utilisation de go_router
                                      ref.read(navigationServiceProvider).goToLogin();
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
