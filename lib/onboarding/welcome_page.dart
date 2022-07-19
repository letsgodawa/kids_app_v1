import 'package:flutter/material.dart';
import 'package:kids_app/pages/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    return SafeArea(
      child: Container(
        child: Scaffold(
            body:Container(
              height: double.maxFinite,
              width: double.maxFinite,
               decoration:const BoxDecoration(
              image: DecorationImage(image: AssetImage("img/welcome.jpg"),
              fit:BoxFit.cover
              ),
              
            ),
            child: Column(
               children: [
                Container(
                  margin: EdgeInsets.only(top: 250),
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                    border:Border.all(color: Colors.white),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child:  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter Your Name',
                    ),
                  ),
                ),
               const SizedBox(height: 20,),
                InkWell(
                  onTap: () async  {
                    
                    final _prefs = await SharedPreferences.getInstance();
                    _prefs.setString("name", nameController.text);
                     Navigator.push(context,MaterialPageRoute(builder: (context) =>  HomePage()),
                      );
                      },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 253, 189, 92),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Center(child: Text('Get Started', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
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