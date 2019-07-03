import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int key) {
    final player = AudioCache();
    player.play('note$key.wav');
  }

  Expanded generateKey(int keyNum, Color keyColor) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(keyNum);
        },
        color: keyColor,
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
              generateKey(1, Colors.red),
              generateKey(2, Colors.orange),
              generateKey(3, Colors.green),
              generateKey(4, Colors.blue),
              generateKey(5, Colors.purple),
              generateKey(6, Colors.yellow),
            ],
          ),
        ),
      ),
    );
  }
}
