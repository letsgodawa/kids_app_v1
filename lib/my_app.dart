import 'package:flutter/material.dart';
import 'package:kids_app/onboarding/welcome_page.dart';







class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        
      ),
      home: WelcomePage()
    );
  }
}