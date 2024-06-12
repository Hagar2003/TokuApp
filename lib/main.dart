import 'package:flutter/material.dart';
import 'pages/Home_page.dart';

void main() {
  runApp(const TokeApp());
}

class TokeApp extends StatelessWidget {
  const TokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
