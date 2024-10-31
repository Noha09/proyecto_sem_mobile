import 'package:flutter/material.dart';
import 'home.dart';
import 'settings.dart';
import 'form.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/settings': (context) => const SettingsPage(), // Corrección aquí
        '/form': (context) => const ThirdPage(),
      },
    );
  }
}
