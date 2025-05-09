import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:forui/forui.dart';
import 'package:petra/modules/auth/presentation/controllers/register_controller.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
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

            // Prénom
            FLabel(
              axis: Axis.vertical,
              label: const Text('First Name'),
              child: TextField(
                controller: _firstNameController,
                onChanged: (value) => ref
                    .read(registerControllerProvider.notifier)
                    .setFirstName(value),
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

            // Nom de famille
            FLabel(
              axis: Axis.vertical,
              label: const Text('Last Name'),
              child: TextField(
                controller: _lastNameController,
                onChanged: (value) => ref
                    .read(registerControllerProvider.notifier)
                    .setLastName(value),
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

            // Email
            FLabel(
              axis: Axis.vertical,
              label: const Text('Email'),
              child: TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) => ref
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

            // Bouton d'inscription
            SizedBox(
              width: double.infinity,
              child: FButton(
                onPress: registerState.isLoading
                    ? null
                    : () => ref.read(registerControllerProvider.notifier).register(),
                child: registerState.isLoading
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
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Log in',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = registerState.isLoading
                            ? null
                            : () {
                                // Navigation vers l'écran de connexion
                                //context.go('/login'); // Utilisation de go_router
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