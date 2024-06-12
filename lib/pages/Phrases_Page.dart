// ignore_for_file: file_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:tokeapp/items/Info_Item.dart';
import 'package:tokeapp/models/lists.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

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
          'Phrases',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (contexe, num) {
          return infoItem(
            press: phrases[num],
          );
        },
      ),
    );
  }
}