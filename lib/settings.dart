import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 40),  // Espacio en la parte superior
          SvgPicture.asset(
            'assets/usuario.svg',
            height: 250,  // Ajusta el tamaño de la imagen según tus necesidades
          ),
          const SizedBox(height: 20),  // Espacio entre la imagen y el botón
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to Home Page'),
            ),
          ),
        ],
      ),
    );
  }
}
