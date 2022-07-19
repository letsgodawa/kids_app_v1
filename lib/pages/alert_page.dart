

import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';


class AlertPage extends StatefulWidget {
  const AlertPage({ Key? key }) : super(key: key);

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
 AudioCache audioCache=AudioCache();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert'),),
      body: Center(
        child: ElevatedButton(onPressed: (){
          showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: NetworkImage("https://lh3.googleusercontent.com/HD1a3P_9Yn9wqGsoHV2mfHnYFBzVXVYO_6aduJ9DQmQOX8wFnYx6md-worcxdtigeuI")),
            actions: [      Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('a.mp3');
                audioCache.play('a.mp3');
              });
            }, icon: const Icon(Icons.play_arrow, color: Colors.white, size: 30,))
                ),
                
              ),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: const Text('Cancel', style: TextStyle(color: Color.fromARGB(255, 255, 139, 131)),))
            ],
          )        
          );
        }, 
        
        child: const Text('Press')
        ),
      ),
    );
  }
}

