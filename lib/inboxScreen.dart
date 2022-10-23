import 'package:flutter/material.dart';

class inboxPage extends StatefulWidget {
  const inboxPage({Key? key}) : super(key: key);

  @override
  State<inboxPage> createState() => _inboxPageState();
}

class _inboxPageState extends State<inboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.grey,
        backgroundColor: Color(0xff212121),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 18,backgroundColor: Color(0xff212121),backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1565209248954568705/vNe5IS7M_400x400.jpg"),),
            SizedBox(width: 35,),
            Container(
              width: 250,
              height: 28,
              decoration: BoxDecoration(
                  color: Colors.grey[700]!,
                  borderRadius: BorderRadius.circular(90),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20,top: 3.5,bottom: 3.5),
                child: Text(
                  "Search Direct Messages",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
            ),
          ],
        ),
        actions: [
          Icon(Icons.settings_outlined,size: 26,)
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 10,
            right: 0,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xff00aeef),
                borderRadius: BorderRadius.circular(100)
              ),
              child: const Center(
                child: Icon(Icons.email_outlined,color: Colors.white,),
              ),
            ),
          ),
          Container(
            width: 375,
              child: Padding(
                  padding: EdgeInsets.only(top: 200,left: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome to your \ninbox!",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35
                        ),
                      ),
                      const Text(
                        "Drop a line, share Tweets and more with\nprivate conversations between you and\nothers on Twitter.",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 16
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        width: 180,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0xff00aeef),
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: const Center(
                          child: Text(
                            "Write a message",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                        ),
                      )
                    ],
                  )
              ),

          )
        ],
      )

    );
  }
}
