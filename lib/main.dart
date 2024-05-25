import 'package:flutter/material.dart';
import 'package:samachaar_flutter/config/themes.dart';
import 'package:samachaar_flutter/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system, // Changes theme based on device's theme
      home: const HomeScreen(),
    );
  }
}
