import 'dart:developer';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_app/models/shape_models.dart';
import 'package:kids_app/pages/home_page.dart';

class ShapeGame extends StatefulWidget {
  const ShapeGame({ Key? key }) : super(key: key);

  @override
  State<ShapeGame> createState() => _ShapeGameState();
}

class _ShapeGameState extends State<ShapeGame> {
  
  

  Widget build(BuildContext context) {
      ShapeModels shapeModels = shapes[ Random().nextInt(8)];
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
                Text("Home ", style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.w500, fontSize: 20),),
                IconButton(onPressed: (){
                      Navigator.push(context, 
                                  MaterialPageRoute(builder: (context)=>HomePage())
                                  );
                }, icon: const Icon(Icons.home,color: Colors.orangeAccent)),
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
                    child: Text("Shapes", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400, color: Colors.orangeAccent),),
                  ),
                const  Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                    Text("Match the correct Shape by placing it on the screen", style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 131, 125, 125), fontWeight: FontWeight.w200),)
                  ),
                 const SizedBox(height: 60),
                 DragTarget<ShapeModels>(
                   
                   onAccept: (model){
                    
                   },
                 
                   builder: (context, _, __){
                   return CircleAvatar(
                     radius: 100,
                     backgroundImage: AssetImage(shapeModels.image),
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
                      itemCount: shapes.length,
                      itemBuilder: (BuildContext ctx, index){
                        return Draggable<ShapeModels>(
                          data: shapes[index],
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
                            image: DecorationImage(image:AssetImage(shapes[index].image),
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
                            image: DecorationImage(image:AssetImage(shapes[index].image),
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
                            image: DecorationImage(image:AssetImage(shapes[index].image),
                            fit: BoxFit.cover
                             )
                            )
                            ),
                            onDragStarted:(){
                              
                            } ,
                            
                            onDragCompleted:(){
                                  bool condition = shapeModels.id == shapes[index].id ;
                             
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
                               shapeModels  = shapes[index];
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