import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playOnClick(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required style, required soundNumber}) {
    return Expanded(
      child: TextButton(
        style: style,
        onPressed: () {
          playOnClick(soundNumber);
        },
        child: const Text(''),
      ),
    );
  }

  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                  style: TextButton.styleFrom(backgroundColor: Colors.red[50]),
                  soundNumber: 1),
              buildKey(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.yellow[50]),
                  soundNumber: 2),
              buildKey(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.orange[50]),
                  soundNumber: 3),
              buildKey(
                  style: TextButton.styleFrom(backgroundColor: Colors.blue[50]),
                  soundNumber: 4),
              buildKey(
                  style: TextButton.styleFrom(backgroundColor: Colors.teal[50]),
                  soundNumber: 5),
              buildKey(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.lightBlue.shade50),
                  soundNumber: 6),
              buildKey(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.indigo[50]),
                  soundNumber: 7),
              // buildKey(color: Colors.red, soundNumber: 2),
              // buildKey(color: Colors.yellow, soundNumber: 3),
              // buildKey(color: Colors.green, soundNumber: 4),
              // buildKey(color: Colors.pink[400], soundNumber: 5),
              // buildKey(color: Colors.purple[400], soundNumber: 6),
              // buildKey(color: Colors.indigo[400], soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
