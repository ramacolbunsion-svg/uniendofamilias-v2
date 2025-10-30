
import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(UniendoFamiliasApp());
}

class UniendoFamiliasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uniendo Familias',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF0099CC),
        scaffoldBackgroundColor: Color(0xFFFFF9F0),
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0099CC), foregroundColor: Colors.white),
      ),
      home: WelcomeScreen(),
    );
  }
}
