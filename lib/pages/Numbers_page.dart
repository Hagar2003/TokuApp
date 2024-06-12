// ignore_for_file: file_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:tokeapp/items/kk.dart';
import '../models/lists.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        backgroundColor:Colors.brown,
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (contexe, num) {
          return ColomPages(
            number: numbers[num],
          );
        },
      ),
    );
  }
}
