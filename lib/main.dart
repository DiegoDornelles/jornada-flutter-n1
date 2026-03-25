import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(JornadaFlutterApp());
}

class JornadaFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carreira Flutter',
      home: LoginPage(),
    );
  }
}