import 'package:flutter/material.dart';

class searchPage extends StatefulWidget {
  const searchPage({Key? key}) : super(key: key);

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff212121),
    appBar: AppBar(
        elevation: 0,
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
        "Search Twitter",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage("https://mongooseagency.com/files/3415/9620/1413/Return_of_Sports.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Positioned(
                  left: 10,
                  bottom: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sports . LIVE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                      Text("Sri Lanka vs Ireland",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                    ],
                  )
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Trending in Iraq",style: TextStyle(color: Colors.white),),
                    Text("#مع فايق ضد تيار الجهلة"),
                    Text("2,145 Tweets"),
                  ],
                ),
                Spacer(),
                Icon(Icons.more_vert,color: Colors.white,)
              ],
            )
            ,
          )
        ],
      )
    );
  }
}
