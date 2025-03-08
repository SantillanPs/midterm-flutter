import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 37, 38, 66),
              const Color.fromARGB(255, 24, 22, 47),
            ], begin: Alignment.topLeft, end: Alignment.bottomCenter),
          ),
        ),
      ),
    );
  }
}
