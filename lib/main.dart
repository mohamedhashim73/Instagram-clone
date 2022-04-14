import 'package:flutter/material.dart';
import 'package:textdformfield_app/Constructors/constructors.dart';
import 'package:textdformfield_app/Home.dart';
import 'package:textdformfield_app/Posts/Posts.dart';
import 'package:textdformfield_app/Settings/settings.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      /*
      1. Main_Page(),  // Contain Posts
      2. Settings_Page(),
       */
    );
  }
}