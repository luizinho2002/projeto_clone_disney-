import 'package:flutter/material.dart';
import 'package:disney_plus_clone/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disney+ Clone',
      theme: ThemeData(
        brightness: Brightness.light, // Define o tema como claro
        primarySwatch:
            Colors.blue, // Você pode escolher a cor primário que quiser
      ),
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
