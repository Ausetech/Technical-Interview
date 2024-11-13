import 'package:flutter/material.dart';
import 'package:technical_interview/screens/logo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Option 1: Set LogoScreen as the home screen
      home: const LogoScreen(),

      // Option 2: Keep LoginScreen as home and navigate to LogoScreen later
      // home: const LoginScreen(),
      // routes: {
      //   '/logo': (context) => const LogoScreen(),
      // },
    );
  }
}
