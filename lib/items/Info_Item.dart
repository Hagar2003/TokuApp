// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:tokeapp/models/num_model.dart';

class infoItem extends StatelessWidget {
  const infoItem({super.key, required this.press});
  final phrasesInfo press;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color:Colors.orangeAccent,
      child: Row(
        children: [
          Column(children: [
            Text(
              press.toku ,
              style: const TextStyle(
                fontSize: 22,  color: Colors.white,
              ),),
              Text(
              press.en ,
              style: const TextStyle(
                fontSize: 22,  color: Colors.white,
              ),
            ),]),
          
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              splashColor:Colors.orangeAccent,
              onPressed: () {
                press.playSound();
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
