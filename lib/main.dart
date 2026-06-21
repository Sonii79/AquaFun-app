import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const AquaFunApp());
}

class AquaFunApp extends StatelessWidget {
  const AquaFunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}