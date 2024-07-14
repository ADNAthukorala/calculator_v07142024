import 'package:calculator_v07142024/Screens/calculator_screen.dart';
import 'package:calculator_v07142024/constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator v07142024',
      theme: ThemeData(
        scaffoldBackgroundColor: kColor01,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: const AppBarTheme(
            backgroundColor: kColor01,
            foregroundColor: kColor02,
            elevation: 4.0),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}
