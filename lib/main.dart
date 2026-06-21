import 'package:flutter/material.dart';
import 'screens/splashscreen.dart';

void main() {
  runApp(const AquaFunApp());
}

class AquaFunApp extends StatelessWidget {
  const AquaFunApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AquaFun',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}