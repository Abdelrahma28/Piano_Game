import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Expanded btnWidget(Color color, int n) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: color),
        onPressed: () {
          final player = AudioCache();
          player.play('note$n.wav');
        },
        child: const Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                btnWidget(Colors.blue, 1),
                btnWidget(Colors.red, 2),
                btnWidget(Colors.green, 3),
                btnWidget(Colors.yellow, 4),
                btnWidget(Colors.pink, 5),
                btnWidget(Colors.purple, 6),
                btnWidget(Colors.orange, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
