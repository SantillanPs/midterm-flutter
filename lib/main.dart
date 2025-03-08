import 'package:flutter/material.dart';
import 'auth/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This Expanded is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}
