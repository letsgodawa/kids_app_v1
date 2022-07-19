import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_app/models/shape_models.dart';

class ShapePages extends StatefulWidget {
  const ShapePages({ Key? key }) : super(key: key);

  @override
  State<ShapePages> createState() => _ShapePagesState();
}

class _ShapePagesState extends State<ShapePages> {
  AudioCache audioCache=AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.white,
      leading: IconButton(onPressed: (){
             Navigator.pop(context);
            }, icon:const Icon(Icons.arrow_back, color: Colors.orangeAccent,)),
          elevation: 0,
            title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Icon(Icons.star, color: Colors.orangeAccent,),
              Text('Shapes',style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold),),
              Icon(Icons.circle, color: Colors.orangeAccent,)
            ],
          ),
          actions: [
            IconButton(onPressed: (){

            }, icon:const  Icon(Icons.search, color: Colors.orangeAccent,))
          ],
          ) ,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20
        ),
        itemCount: shapes.length,
         itemBuilder: (BuildContext ctx, index){
           return  InkWell(
            onTap: (){
          if(index==0){
            setState(() {
                audioCache.play('circle.mp3');
              });
                 {
                            showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: AssetImage("img/shapes/circle.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('circle.mp3');
                audioCache.play('circle.mp3');
              });
            }, icon: Icon(Icons.play_arrow, color: Colors.white, size: 30,))
                ),
                
              ),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Cancel', style: TextStyle(color: Color.fromARGB(255, 255, 139, 131)),))
            ],
          )        
          );
                          }
               }
          if(index==1){
              setState(() {
                audioCache.play('ellipse.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: AssetImage("img/shapes/ellipse.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('ellipse.mp3');
                audioCache.play('ellipse.mp3');
              });
            }, icon: Icon(Icons.play_arrow, color: Colors.white, size: 30,))
                ),
                
              ),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Cancel', style: TextStyle(color: Color.fromARGB(255, 255, 139, 131)),))
            ],
          )        
          );
          }    

          if(index==2){
              setState(() {
                audioCache.play('heart.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: AssetImage("img/shapes/heart.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('heart.mp3');
                audioCache.play('heart.mp3');
              });
            }, icon: Icon(Icons.play_arrow, color: Colors.white, size: 30,))
                ),
                
              ),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Cancel', style: TextStyle(color: Color.fromARGB(255, 255, 139, 131)),))
            ],
          )        
          );
          }    
           if(index==3){
               setState(() {
                audioCache.play('hexagon.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: AssetImage("img/shapes/hexagon.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('hexagon.mp3');
                audioCache.play('hexagon.mp3');
              });
            }, icon: Icon(Icons.play_arrow, color: Colors.white, size: 30,))
                ),
                
              ),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Cancel', style: TextStyle(color: Color.fromARGB(255, 255, 139, 131)),))
            ],
          )        
          );
          } 
             if(index==4){
                 setState(() {
                audioCache.play('rectangle.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: AssetImage("img/shapes/rectangle.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('rectangle.mp3');
                audioCache.play('rectangle.mp3');
              });
            }, icon: Icon(Icons.play_arrow, color: Colors.white, size: 30,))
                ),
                
              ),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Cancel', style: TextStyle(color: Color.fromARGB(255, 255, 139, 131)),))
            ],
          )        
          );
          }
          if(index==5){
              setState(() {
                audioCache.play('rhombus.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: AssetImage("img/shapes/rhombus.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('rhombus.mp3');
                audioCache.play('rhombus.mp3');
              });
            }, icon: Icon(Icons.play_arrow, color: Colors.white, size: 30,))
                ),
                
              ),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Cancel', style: TextStyle(color: Color.fromARGB(255, 255, 139, 131)),))
            ],
          )        
          );
          }
          if(index==6){
              setState(() {
                audioCache.play('square.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: AssetImage("img/shapes/square.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('square.mp3');
                audioCache.play('square.mp3');
              });
            }, icon: Icon(Icons.play_arrow, color: Colors.white, size: 30,))
                ),
                
              ),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Cancel', style: TextStyle(color: Color.fromARGB(255, 255, 139, 131)),))
            ],
          )        
          );
          }    
          if(index==7){
              setState(() {
                audioCache.play('star.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: AssetImage("img/shapes/Star.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('star.mp3');
                audioCache.play('star.mp3');
              });
            }, icon: Icon(Icons.play_arrow, color: Colors.white, size: 30,))
                ),
                
              ),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Cancel', style: TextStyle(color: Color.fromARGB(255, 255, 139, 131)),))
            ],
          )        
          );
          }
          if(index==8){
              setState(() {
                audioCache.play('triangle.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: AssetImage("img/shapes/triangle.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('triangle.mp3');
                audioCache.play('triangle.mp3');
              });
            }, icon: Icon(Icons.play_arrow, color: Colors.white, size: 30,))
                ),
                
              ),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Cancel', style: TextStyle(color: Color.fromARGB(255, 255, 139, 131)),))
            ],
          )        
          );
          }        
            },
            
             child: Container(
                                height: 30,
                                width: 30,
                              alignment: Alignment.center,                  
                              decoration:  BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Color.fromARGB(255, 255, 207, 136),
                                width: 2
                                ),
                                borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image:AssetImage(shapes[index].image),
                              fit: BoxFit.cover
                               )
                              )
                              
             ),
           );
         }
         ),
      )
    );
  }
}