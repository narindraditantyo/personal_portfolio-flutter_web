import 'package:flutter/material.dart';
import 'package:narindraditantyo/views/about_page.dart';
import 'package:narindraditantyo/views/contact_page.dart';
import 'package:narindraditantyo/views/interests_page.dart';
import 'package:narindraditantyo/views/landing_page.dart';
import 'package:narindraditantyo/views/works_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gregorius Agung Narindra Aditantyo',
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/about': (context) => AboutPage(),
        '/works': (context) => WorksPage(),
        '/interests': (context) => InterestsPage(),
        '/contact': (context) => ContactPage()
      }
    );
  }
}