import 'package:flutter/material.dart';

import 'upcoming.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Craven Menu',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainMenu(),
    );
  }
}

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: const Text('Craven Menu'),
        centerTitle: true,
        backgroundColor: Colors.black54,
        titleTextStyle: const TextStyle(
          fontFamily: "RobotoMono",
          fontSize: 36.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.white,
        ),
      ),
      body: const Center(
        child: UpcomingMenu(),
      ),
    );
  }
}