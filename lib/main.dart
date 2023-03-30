import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:noiapp/pages/main_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Always Portrait Orientation
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(NoiApp());
  });
}

class NoiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NoiApp',
      theme: ThemeData.dark(),
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'images/logo.png',
        ),
        nextScreen: MainPage(),
        splashTransition: SplashTransition.rotationTransition,
        backgroundColor: Colors.white,
        duration: 3000,
      ),
    );
  }
}
