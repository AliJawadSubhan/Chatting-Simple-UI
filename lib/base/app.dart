import 'package:flutter/material.dart';
import 'package:stful_wid/screens/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F3),
        appBarTheme: const AppBarTheme(
          foregroundColor: Color(0xFF113953),
          backgroundColor: Color(0xFFF5F5F3),
        ),
      ),
      routes: {
        '/': (context) => HomePage(),
      },
    );
  }
}
