import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyXylophoneApp(),
  ));
}

class MyXylophoneApp extends StatelessWidget {
  const MyXylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.setSource(AssetSource('game_0$soundNumber.wav'));
  }
  Expanded buildKey (backgroundColor, int soundNumber){
    return Expanded(
      child: TextButton(
        onPressed: () async {
          playSound(soundNumber);
        },
        child: Text(''),
        style: TextButton.styleFrom(backgroundColor: backgroundColor),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green,4),
              buildKey(Colors.blue,5),
              buildKey(Colors.purpleAccent,6),
              buildKey(Colors.lightGreenAccent,7),


            ],
          ),
        ),
      ),
    );
  }
}
