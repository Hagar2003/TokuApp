// ignore_for_file: camel_case_types

import 'package:audioplayers/audioplayers.dart';

class information {
  final String toku;
  final String en;
  final String image;
  final String adui;
  const information({
    required this.toku,
    required this.en,
    required this.image,
    required this.adui,
  });
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(adui));
  }
}

class phrasesInfo {
  String toku;
  String en;
  String adui;
  phrasesInfo({
    required this.toku,
    required this.en,
    required this.adui,
  });
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(adui));
  }
}
