import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Widget buildLayout(Color colorName, int note) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(note);
        },
        color: colorName,
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
            children: [
              buildLayout(Colors.red, 1),
              buildLayout(Colors.orange, 2),
              buildLayout(Colors.yellow, 3),
              buildLayout(Colors.green, 4),
              buildLayout(Colors.lightGreen, 5),
              buildLayout(Colors.blue, 6),
              buildLayout(Colors.indigo, 7),
            ],
          ),
        ),
      ),
    );
  }
}
