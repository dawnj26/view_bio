import 'package:flutter/material.dart';
import 'package:quinto_assignment4/screens/home_screen.dart';

void main() {
  runApp(const MeApp());
}

class MeApp extends StatelessWidget {
  const MeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
