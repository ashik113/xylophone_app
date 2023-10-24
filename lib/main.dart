import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(String songName) {
    final player = AudioPlayer();
    player.play(AssetSource('$songName.wav'));
  }

  Widget buildKeys(String songName, Color color) {
    return Expanded(
      child: GestureDetector(
        child: Container(
          color: color,
        ),
        onTap: () {
          playSound(songName);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('XyloPhone App'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              buildKeys('note1', Colors.red),
              buildKeys('note2', Colors.orange),
              buildKeys('note3', Colors.yellow),
              buildKeys('note4', Colors.green),
              buildKeys('note5', Colors.teal),
              buildKeys('note6', Colors.blue),
              buildKeys('note7', Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
