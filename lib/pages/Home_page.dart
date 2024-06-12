// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../items/contaner_home.dart';
import 'Colors_Page.dart';
import 'Family_page.dart';
import 'Numbers_page.dart';
import 'Phrases_Page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFCF6),
      appBar: AppBar(
      backgroundColor:Colors.brown,
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
          children: [
            Category(
                  text: '  Numbers',
                  color: Colors.orange,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext) {
                      return NumberPage();
                    }));
                  }),
              Category(
                  text: '  Family Members',
                  color: Colors.purple,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext) {
                        return FamilyPage();
                      }),
                    );
                  }),
              Category(
                  text: '  Colors',
                  color: Colors.blue,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext) {
                        return ColorsPage();
                      }),
                    );
                  }),
            Category(
                  text: '  Phrases',
                  color: Colors.green,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext) {
                        return PhrasesPage();
                      }),
                    );
                  }),
            ]));
  }
}

class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          alignment: Alignment.centerLeft,
          color: color,
          height: 60,
          width: double.infinity,
          child: Text(text!,
              style: const TextStyle(color: Colors.white, fontSize: 20))),
    );
  }
}
