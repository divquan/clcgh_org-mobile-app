import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;
    final bool isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      body: Center(
        child: isDarkMode
            ? Image.asset(
                'assets/images/logo_white_H.png',
                width: 170,
                height: 170,
              )
            : Image.asset(
                'assets/images/logo_blue.png',
                width: 170,
                height: 170,
              ),
      ),
    );
  }
}
