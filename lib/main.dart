import 'package:flutter/material.dart';
import 'package:twitter_ui/splashScreen.dart';

void main(){
  runApp(myApp());
}


class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: splash(),
    );
  }
}