import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Gradient background
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF140034), Color(0xFF01010d)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          // Centering the logo
          child: LayoutBuilder(
            builder: (context, constraints) {
              double logoSize =
                  constraints.maxWidth * 0.4; // Responsive logo size

              return Image.asset(
                'assets/logo.png', // Path to your logo asset
                width: logoSize,
                height: logoSize,
              );
            },
          ),
        ),
      ),
    );
  }
}
