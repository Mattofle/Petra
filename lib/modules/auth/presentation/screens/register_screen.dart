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
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final registerState = ref.watch(registerControllerProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscription'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Créez votre compte',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
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
            
            // Nom complet
            FLabel(
              axis: Axis.vertical,
              label: const Text('Nom complet'),
              description: const Text('Entrez votre nom et prénom.'),
              child: TextField(
                controller: _nameController,
                onChanged: (value) => ref.read(registerControllerProvider.notifier).setName(value),
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
            
            // Email avec FLabel
            FLabel(
              axis: Axis.vertical,
              label: const Text('Email'),
              description: const Text('Entrez votre adresse email.'),
              child: TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) => ref.read(registerControllerProvider.notifier).setEmail(value),
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
              child: ElevatedButton(
                onPressed: registerState.isLoading 
                  ? null 
                  : () => ref.read(registerControllerProvider.notifier).register(),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: registerState.isLoading
                  ? const CircularProgressIndicator()
                  : const Text(
                      'S\'inscrire',
                      style: TextStyle(fontSize: 16),
                    ),
              ),
            ),
            
            const SizedBox(height: 20),
            
            // Lien vers la page de connexion
            Center(
              child: TextButton(
                onPressed: registerState.isLoading 
                  ? null 
                  : () {
                      // Navigation vers l'écran de connexion
                      // Navigator.of(context).pop();
                    },
                child: const Text('Déjà un compte? Connectez-vous'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}