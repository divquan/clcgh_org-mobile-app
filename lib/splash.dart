import 'package:clcgh_org/main.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: ((context) => const MyHomePage(title: 'clcgh.org'))));
  }

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = Theme.of(context).brightness;
    final bool isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      body: Center(
        child: isDarkMode
            ? Image.asset(
                'assets/images/logo_white_H.png',
                width: 140,
                height: 140,
              )
            : Image.asset(
                'assets/images/logo_blue.png',
                width: 140,
                height: 140,
              ),
      ),
    );
  }
}
