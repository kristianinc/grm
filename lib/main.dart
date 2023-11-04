import 'package:flutter/material.dart';
import 'package:grm/form1.dart';
import 'package:grm/splashscreen.dart';

void main() {
  runApp(const MaterialApp(
    home: Splashscreen(),
    // theme: ThemeData(brightness: Brightness.dark),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
