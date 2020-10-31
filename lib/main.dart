import 'package:flutter/material.dart';
import 'package:narindraditantyo/views/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gregorius Agung Narindra Aditantyo',
      home: LandingPage(),
    );
  }
}