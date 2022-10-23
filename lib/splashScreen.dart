import 'package:flutter/material.dart';
import 'package:twitter_ui/mainScreen.dart';
import 'homeScreen.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  bool isLoading = true;
  @override
  void initState(){
    isLoading = true;
    Future.delayed(Duration(milliseconds: 1200),(){
      setState((){
        isLoading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return isLoading ? Scaffold(
        backgroundColor: Color(0xff00aeef),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Color(0xff00aeef),
                image: const DecorationImage(
                    image: AssetImage("asset/twitter.png"),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(100)
            ),
          ),
        )
    ) : homePage();
  }
}
