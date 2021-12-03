import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //tracking audio with its number
  void playMusic(int audioNumber) {
    AudioCache player = AudioCache();
    player.play("note$audioNumber.wav");
  }

  //reducing repetitive code using a fn that returns widget expanded
  //takes positional arguments so as to be able to call it with its referrals
  //we can remove it {} but when calling, we don't call parameters
  //parameters need not to be the same name
 Expanded buildKey({Color color, int audioNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playMusic(audioNum);
        },
        // child: Container(
        //   color: color,
        // ),
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
                buildKey(color: Colors.red, audioNum: 1),
                buildKey(color: Colors.orange, audioNum: 2),
                buildKey(color: Colors.yellow, audioNum: 3),
                buildKey(color: Colors.green, audioNum: 4),
                buildKey(color: Colors.blue, audioNum: 5),
                buildKey(color: Colors.indigo, audioNum: 6),
                buildKey(color: Colors.purple, audioNum: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
