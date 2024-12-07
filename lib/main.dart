import 'package:flutter/material.dart';
import 'Screens/login_screen.dart'; // Import the Login Screen.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(), // Start with the Login Screen
    );
  }
}
