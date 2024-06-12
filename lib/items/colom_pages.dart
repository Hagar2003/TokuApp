import 'package:flutter/material.dart';
import 'package:tokeapp/models/num_model.dart';

import 'Info_Item.dart';

class ColomPages extends StatelessWidget {
  const ColomPages({Key? key, required this.number})
      : super(
          key: key,
        );
  // final Color? color;
  final information number;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: const Color(0xFFD7E1FD),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                color:const Color.fromARGB(255, 249, 187, 105),
                child: Image.asset(
                  number.image,
                  height: 90,
                ),
              ),
              Expanded(
                child: infoItem(
                  press: phrasesInfo(
                    adui: number.adui,
                    en: number.en,
                    toku: number.toku,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
