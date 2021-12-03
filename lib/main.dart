import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {
  void playMusic(int audioNumber){
    AudioCache player = AudioCache();
    player.play("note$audioNumber.wav");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(


          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Expanded(
                  child: TextButton(
                      onPressed: (){
                        playMusic(1);
                        },
                           child: Container(
                             color: Colors.red,
                             // height: 50,
                             // width: 1000,
                             ),
                           ),
                ),
                // SizedBox(
                //   height: 5,
                // ),
                Expanded(
                  child: TextButton(
                    onPressed: (){
                      playMusic(2);
                    },
                    child: Container(
                      color: Colors.orange,
                      // height: 50,
                      // width: 1000,
                    ),
                  ),
                ),

        // SizedBox(
        //     height: 5,
        // ),
        Expanded( 
          child: TextButton(
              onPressed: (){
                playMusic(3);
              },
              child: Container(
                color: Colors.yellow,
                // height: 50,
                // width: 1000,
              ),
          ),
        ),
                // SizedBox(
                //   height: 5,
                // ),
                Expanded( 
                  child: TextButton(
                    onPressed: (){
                      playMusic(4);
                    },
                    child: Container(
                      color: Colors.green,
                      // height: 50,
                      // width: 1000,
                    ),
                  ),
                ),

                // SizedBox(
                //   height: 5,
                // ),
                Expanded( 
                  child: TextButton(
                    onPressed: (){
                      playMusic(5);
                    },
                    child: Container(
                      color: Colors.blue,
                      // height: 50,
                      // width: 1000,
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 5,
                // ),
                Expanded(
                  child: TextButton(
                    onPressed: (){
                      playMusic(6);
                    },
                    child: Container(
                      color: Colors.indigo,
                      // height: 50,
                      // width: 1000,
                    ),
                  ),
                ),

                // SizedBox(
                //   height: 5,
                // ),
                Expanded(
                  child: TextButton(
                    onPressed: (){
                      playMusic(7);
                    },
                    child: Container(
                      color: Colors.purple,
                      // height: 50,
                      // width: 1000,
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

//had to use TextButton instead FlatButton
//because flatbutton is deprecated
//that  means i need something for color
//card didn't do so i resorted to container
//because contain has property color
//so the container was wrapped in the button
//which was wrapped in expanded so as to have
//equal size buttons
//column was used to streatch the cont across axis
