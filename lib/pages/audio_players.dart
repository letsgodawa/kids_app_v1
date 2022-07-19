import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPlayers extends StatefulWidget {
  const AudioPlayers({ Key? key }) : super(key: key);

  @override
  State<AudioPlayers> createState() => _AudioPlayersState();
}

class _AudioPlayersState extends State<AudioPlayers> {
  AudioCache audioCache=AudioCache();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
        
          children: [
            IconButton(onPressed: (){
              setState(() {
                audioCache.load('a.mp3');
                audioCache.play('a.mp3');
              });
            }, icon: Icon(Icons.play_arrow))
          ],
        ),
      ),
    );
  }
}