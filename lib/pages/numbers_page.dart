import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_app/models/number_models.dart';



class NumbersPage extends StatefulWidget {
   NumbersPage({ Key? key }) : super(key: key);

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  AudioCache audioCache = AudioCache();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.white,
          elevation: 0,
            leading: IconButton(onPressed: (){
             Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back, color: Colors.orangeAccent,)),
            title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Text('Numbers',style: TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.bold),),
              Icon(Icons.child_care, color: Colors.orangeAccent,)
            ],
          ),
          actions: [
            IconButton(onPressed: (){

            }, icon: Icon(Icons.search, color: Colors.orangeAccent,))
          ],
          ) ,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20
        ),
        itemCount: number.length,
         itemBuilder: (BuildContext ctx, index){
           return InkWell(
             onTap: (){
               if(index==0){
                   setState(() {
                audioCache.play('1.mp3');
              });
                 {
                            showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYZwJzsbY7JrqDl2j-Kf0iHaiqJoS-MZyM06xspeI9UdHW9_Dfj_g2YvOpQF--S3B4_Mg&usqp=CAU")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('1.mp3');
                audioCache.play('1.mp3');
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
                audioCache.play('2.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVbwUy0EaNGqZoVFKbs9iSK-ieme-WVL4tBQQGs1jcOfzLT4SfHl6apC9m7skyqiF4yEI&usqp=CAU")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('2.mp3');
                audioCache.play('2.mp3');
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
                audioCache.play('3.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: NetworkImage("https://cdn1.vectorstock.com/i/thumb-large/05/60/a-number-three-vector-3550560.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('3.mp3');
                audioCache.play('3.mp3');
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
                audioCache.play('4.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: NetworkImage("https://previews.123rf.com/images/iimages/iimages1411/iimages141100262/33299245-kinder-auf-der-ganzen-nummer-4.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('4.mp3');
                audioCache.play('4.mp3');
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
                audioCache.play('5.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: NetworkImage("https://i.pinimg.com/736x/25/84/1f/25841fe595f0ab2b2f705119a74c3ecd.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('5.mp3');
                audioCache.play('5.mp3');
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
                audioCache.play('6.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: NetworkImage("https://i.pinimg.com/564x/4f/7f/63/4f7f6364297e7bdf9393983d08d5e49d.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('6.mp3');
                audioCache.play('6.mp3');
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
                audioCache.play('7.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: NetworkImage("https://previews.123rf.com/images/iimages/iimages1412/iimages141200118/34140151-ni%C3%B1os-jugando-con-el-n%C3%BAmero-7.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('7.mp3');
                audioCache.play('7.mp3');
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
                audioCache.play('8.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: NetworkImage("https://thumbs.dreamstime.com/b/cartoon-number-eight-kids-birthday-card-template-vector-illustration-flat-style-214613616.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('8.mp3');
                audioCache.play('8.mp3');
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
                audioCache.play('9.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: NetworkImage("https://previews.123rf.com/images/natchapohn/natchapohn1702/natchapohn170200092/71359884-enfants-mignons-num%C3%A9ro-neuf-tra%C3%A7age-avec-9-clownfish-pour-les-enfants-qui-apprennent-%C3%A0-compter-et-%C3%A0-.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('9.mp3');
                audioCache.play('9.mp3');
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
          if(index==9){
              setState(() {
                audioCache.play('10.mp3');
              });
  showDialog(context: context, 
          builder: (context)=> AlertDialog(
            content: Image(image: NetworkImage("https://previews.123rf.com/images/kankhem/kankhem2008/kankhem200800049/153296259-flashcard-for-kindergarten-and-preschool-learning-to-counting-number-10-with-a-number-of-kids-.jpg")),
            actions: [
              
              
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.orangeAccent,
                  radius: 35,
                  child: IconButton(onPressed: (){
              setState(() {
                audioCache.load('10.mp3');
                audioCache.play('10.mp3');
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
                              border: Border.all(color: Color.fromARGB(255, 255, 179, 64),
                              width: 2
                              ),
                              borderRadius: BorderRadius.circular(80),
                            image: DecorationImage(image:AssetImage(number[index].image),
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