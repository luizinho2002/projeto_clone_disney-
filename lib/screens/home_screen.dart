import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // A cor de fundo da home é branca
      // 1. A barra superior (AppBar)
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Remove a sombra padrão
        title: Center(
          child: Image.asset('assets/images/disney_plus_logo.png', height: 30),
        ),
        leading: const CircleAvatar(
          // A foto de perfil do lado esquerdo
          backgroundImage: AssetImage('assets/images/avatars.png'),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
            color: Colors.black, // Cor do ícone
          ),
        ],
      ),

      // 2. O corpo da tela
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            _buildHeroBanner(), // <-- O banner vai aqui
            const SizedBox(height: 24),
          ],
        ),
      ),

      // 3. A barra de navegação inferior
      bottomNavigationBar: BottomNavigationBar(
        type:
            BottomNavigationBarType.fixed, // Garante que os ícones não se movem
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Apps'),
        ],
      ),
    );
  }

  // Função para construir o banner
  Widget _buildHeroBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset('assets/images/group8.png', fit: BoxFit.cover),
              Positioned(
                left: 16,
                bottom: 16,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Ação do botão
                  },
                  icon: const Icon(Icons.play_arrow),
                  label: const Text('Watch now'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white..withOpacity(0.2),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    side: const BorderSide(color: Colors.white, width: 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
