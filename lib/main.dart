import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play("note$num.wav");
  }

  Expanded buildKey({Color colorCode, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: colorCode,
        onPressed: () {
          playSound(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(colorCode: Colors.blue.shade900, soundNum: 1),
                buildKey(colorCode: Colors.blue, soundNum: 2),
                buildKey(colorCode: Colors.green, soundNum: 3),
                buildKey(colorCode: Colors.orange, soundNum: 4),
                buildKey(colorCode: Colors.red, soundNum: 5),
                buildKey(colorCode: Colors.grey, soundNum: 6),
                buildKey(colorCode: Colors.yellow, soundNum: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.indigo,
                    child: FlatButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play("note1.wav");
                      },
                      child: null,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: FlatButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play("note2.wav");
                      },
                      child: null,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.green,
                    child: FlatButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play("note3.wav");
                      },
                      child: null,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.orange,
                    child: FlatButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play("note4.wav");
                      },
                      child: null,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.red,
                    child: FlatButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play("note5.wav");
                      },
                      child: null,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.grey,
                    child: FlatButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play("note6.wav");
                      },
                      child: null,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.yellow,
                    child: FlatButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play("note7.wav");
                      },
                      child: null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/
