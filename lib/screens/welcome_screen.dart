import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // 1. Logo
                Image.asset('assets/images/disney_logo_plus.png', height: 100),

                const SizedBox(height: 120),

                // 2. Botão de Email
                ElevatedButton(
                  onPressed: () {
                    // Ação do botão
                  },
                  style:
                      ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        minimumSize: const Size.fromHeight(50),
                      ).copyWith(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                      ),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF001150), Color(0xFF002277)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
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

                const SizedBox(height: 16),

                // 3. Botão de Mídias Sociais
                OutlinedButton(
                  onPressed: () {
                    // Ação do botão
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    side: const BorderSide(color: Colors.blue, width: 2),
                    minimumSize: const Size.fromHeight(50),
                    foregroundColor: Colors.blue,
                  ),
                  child: const Text(
                    'Sign up with Social Media',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 24),

                // 4. Texto "Skip"
                TextButton(
                  onPressed: () {
                    // Ação para o "Skip"
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
