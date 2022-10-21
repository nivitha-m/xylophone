import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playsound(int soundnumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/note$soundnumber.wav"),
    );
  }

  Expanded buildkey({Color color,int soundnumber} ) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          // minimumSize: const Size.fromHeight(115),
          backgroundColor: color,
        ),
        onPressed: () {
          playsound(soundnumber);
        },
        child: null,
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color:Colors.red,soundnumber:1),
              buildkey(color:Colors.orange,soundnumber:2),
              buildkey(color:Colors.yellow,soundnumber:3),
              buildkey(color:Colors.green,soundnumber:4),
              buildkey(color:Colors.teal,soundnumber:5),
              buildkey(color:Colors.blue,soundnumber:6),
              buildkey(color:Colors.purple,soundnumber:7),
            ],
          ),
        ),
      ),
    );
  }
}


//another solution to increase the size of the textbutton from a tab with to fully stretched is

// TextButton(
//                 style: TextButton.styleFrom(
//                   minimumSize: const Size.fromHeight(115), ///this line here is the key
//                   backgroundColor: Colors.deepPurple,
//                 ),
//                 onPressed: () {
//                   playsound(7);
//                 },
//                 child: null,
//               ),