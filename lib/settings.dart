import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold( // Sin const aquí
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Settings'),
        previousPageTitle: 'Home',
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Quitar `const` ya que SvgPicture.asset no es un constructor constante
              SvgPicture.asset(
                'assets/usuario.svg',
                height: 250,
              ),
              const SizedBox(height: 20),
              CupertinoButton(
                color: CupertinoColors.activeBlue,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back to Home Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
