import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/disney_plus_logo.png', height: 100),

            const SizedBox(
              height: 120,
            ), // Espaçamento grande entre o logo e o primeiro botão

            SizedBox(height: 50, child: _buildSignUpWithEmailButton()),

            const SizedBox(height: 16), // Espaçamento entre os dois botões

            SizedBox(height: 50, child: _buildSignUpWithSocialMediaButton()),

            const SizedBox(
              height: 24,
            ), // Espaçamento entre o segundo botão e o texto "Skip"

            TextButton(
              onPressed: () {},
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.blue, // A cor do texto "Skip"
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignUpWithEmailButton() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0), // Arredonda os cantos
        gradient: const LinearGradient(
          colors: [
            Color(0xFF001150), // Um azul escuro
            Color(0xFF002277), // Um azul um pouco mais claro
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Ação para o botão de e-mail
          },
          borderRadius: BorderRadius.circular(30.0),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: Text(
                'Sign up with Email',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpWithSocialMediaButton() {
    return OutlinedButton(
      onPressed: () {
        // Ação para o botão de mídias sociais
      },
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0), // Arrendonda os cantos
        ),
        side: const BorderSide(
          color: Colors.blue, // Cor da borda
          width: 2,
        ),
        padding: const EdgeInsets.symmetric(vertical: 16.0),
      ),
      child: const Text(
        'Sign up with Social Media',
        style: TextStyle(
          color: Colors.blue, // Cor do texto
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
