import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BeatMaker());
}

class BeatMaker extends StatelessWidget {
  BeatMaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: BeatPage(),
      ),
    );
  }
}

class BeatPage extends StatelessWidget {
  BeatPage({Key? key}) : super(key: key);
  final player = AudioCache();

  void onplayer(String voiceName) {
    player.play('$voiceName.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  buildBeatMakers('bass_1', Colors.red),
                  buildBeatMakers('bass_3', Colors.indigo),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildBeatMakers('bass_4', Colors.teal),
                  buildBeatMakers('clap_1', Colors.lightGreen),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildBeatMakers('clap_2', Colors.blue),
                  buildBeatMakers('kick', Colors.purple),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  buildBeatMakers('kick_2', Colors.pink),
                  buildBeatMakers('snare', Colors.cyan),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded buildBeatMakers(String voice, Color recolor) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          onplayer(voice);
        },
        child: Container(
          color: recolor,
        ),
      ),
    );
  }
}
