import 'dart:developer';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_app/models/number_models.dart';
import 'package:kids_app/pages/nepali_game.dart';

class NumberGame extends StatefulWidget {
  const NumberGame({ Key? key }) : super(key: key);

  @override
  State<NumberGame> createState() => _NumberGameState();
}

class _NumberGameState extends State<NumberGame> {
  
  

  Widget build(BuildContext context) {
      NumberModels numberModels = number[ Random().nextInt(9)];
      AudioCache audioCache=AudioCache();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: (){
          Navigator.pop(context);
          }, icon:const Icon(Icons.arrow_back, color: Colors.orangeAccent,)),
         
          actions: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Next", style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.w500, fontSize: 20),),
                IconButton(onPressed: (){
                      Navigator.push(context, 
                                  MaterialPageRoute(builder: (context)=>NepaliGame())
                                  );
                }, icon: const Icon(Icons.arrow_circle_right_rounded,color: Colors.orangeAccent, size: 30,)),
              ],
            ),
          )],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin:const EdgeInsets.only(left: 10),
              height: double.maxFinite,
              width: 200,
              color:const Color.fromARGB(255, 255, 247, 236),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Numbers", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400, color: Colors.orangeAccent),),
                  ),
                const  Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                    Text("Match the correct Number by placing it on the screen", style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 131, 125, 125), fontWeight: FontWeight.w200),)
                  ),
                 const SizedBox(height: 60),
                 DragTarget<NumberModels>(
                   
                   onAccept: (model){
                    
                   },
                 
                   builder: (context, _, __){
                   return CircleAvatar(
                     radius: 80,
                     backgroundImage: AssetImage(numberModels.image),
                   );
                 },
                 
                 )
                ],
              ),
            ),
            Container(
              margin:const EdgeInsets.only(right: 10),
              height: double.maxFinite,
              width: 120,
              
              child: GridView.builder(gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10
                        
                      ), 
                      itemCount: number.length,
                      itemBuilder: (BuildContext ctx, index){
                        return Draggable<NumberModels>(
                          data: number[index],
                          child: Container(
                              height: 100,
                              width: 100,
                            alignment: Alignment.center,                  
                            decoration:  BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.orangeAccent,
                              width: 2
                              ),
                              borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(image:AssetImage(number[index].image),
                            fit: BoxFit.cover
                             )
                            )
                            ),
                            feedback: 
                            Container(
                              height: 100,
                              width: 100,
                            alignment: Alignment.center,                  
                            decoration:  BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Color.fromARGB(255, 255, 255, 255),
                              width: 2
                              ),
                              borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(image:AssetImage(number[index].image),
                            fit: BoxFit.cover
                             )
                            )
                            ),
                            childWhenDragging: Container(
                              height: 100,
                              width: 100,
                            alignment: Alignment.center,                  
                            decoration:  BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Color.fromARGB(255, 255, 255, 255),
                              width: 2
                              ),
                              borderRadius: BorderRadius.circular(60),
                            image: DecorationImage(image:AssetImage(number[index].image),
                            fit: BoxFit.cover
                             )
                            )
                            ),
                            onDragStarted:(){
                              
                            } ,
                            
                            onDragCompleted:(){
                                  bool condition = numberModels.id == number[index].id ;
                             
                             condition ?  audioCache.play('Correct.mp3') : audioCache.play('Wrong.mp3');
                             

                              ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(

                                  SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: condition ? Colors.green : Colors.red,
                                    content: Text(condition ? "Correct" : "Incorrect"))
                                );
                            
                          if(condition) {
                            Future.delayed(const Duration(seconds: 2), () {
                             setState(() {
                               numberModels  = number[index];
                             }) ;
                          });
                          }
                              
                              
                            },
                            onDragEnd: (details) {
                            
                         
                          
                          
                          

                            },
                            onDraggableCanceled: (Velocity, Offset){},
                            onDragUpdate: (DragUpdateDetails){},
                            maxSimultaneousDrags: 1,
                        );
                      }
                      )
            )
          ],
        ),
      ),
    );
  }
}