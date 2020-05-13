import 'package:flutter/material.dart';
import 'package:pavitras_kitchen/login.dart';
import 'package:pavitras_kitchen/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      
      // home:WelcomeScreen(),

      home: Login(),
    );
  }
  
}
