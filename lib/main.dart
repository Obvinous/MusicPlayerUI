import 'package:flutter/material.dart';
import 'package:music_player/view/page1.dart';

void main(){
  runApp(MusicPlayer());
}
class MusicPlayer extends StatelessWidget {
  const MusicPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cirular'),
      home: MusicP(),
      debugShowCheckedModeBanner: false,
    );
  }
}