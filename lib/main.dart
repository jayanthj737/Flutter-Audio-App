import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playSound(int n) {
      final player = AudioCache();
      player.play('note$n.wav');
    }

    Expanded buildKey({Color color, int soundNumber}) {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          },
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.purple, soundNumber: 1),
              buildKey(color: Colors.indigo, soundNumber: 2),
              buildKey(color: Colors.blueAccent, soundNumber: 3),
              buildKey(color: Colors.greenAccent, soundNumber: 4),
              buildKey(color: Colors.yellowAccent, soundNumber: 5),
              buildKey(color: Colors.orangeAccent, soundNumber: 6),
              buildKey(color: Colors.red, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
