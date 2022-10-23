
import 'package:flutter/material.dart';

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.grey,
        backgroundColor: Color(0xff212121),
        title: Row(
          children: [
            CircleAvatar(radius: 16,backgroundColor: Color(0xff212121),backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1565209248954568705/vNe5IS7M_400x400.jpg"),),
            SizedBox(width: 120,),
            Container(
              width: 26,
              height: 26,
              decoration: BoxDecoration(
                  color: Color(0xff212121),
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: NetworkImage("https://www.freepnglogos.com/uploads/twitter-logo-png/twitter-logo-vector-png-clipart-1.png"),
                  )
              ),
            ),
          ],
        ),
        actions: [
          Icon(Icons.bubble_chart_outlined)
        ],
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(10),
            child: Column(
              children: [
                addtweet(),
                addtweet(),
              ],
            ),
          ),

        ],
      ),
      );

  }
  Row addicon(IconData icon,String reactions){
    return Row(
      children: [
        Icon(icon,color: Colors.white,),
        Text(reactions,style: TextStyle(color: Colors.white),),
        SizedBox(width: 30,),
      ],
    );
  }

  Column addtweet(){
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(radius: 20,backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1284862966265982977/ZH1JJWQx_400x400.jpg"),),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text("عبد افلرحمن المعيدر",style: TextStyle(color: Colors.white),), Text("@abdulra,... . 23h",style: TextStyle(color: Colors.white),),
                  ],
                ),
                Text("هالتطبيقات هي الأعظم على الاطلاق ومستحيل أستغني عنها",style: TextStyle(color: Colors.white),),
              ],
            ),
            Icon(Icons.more_vert,color: Colors.white,)
          ],
        ),
        SizedBox(height: 10,),
        Container(
          width: 300,
          height: 250,
          decoration: BoxDecoration(
              color: Colors.yellow,
              image: const DecorationImage(
                  image: NetworkImage("http://d.top4top.net/p_36472xot1.png"),
                  fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(8)
          ),
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            SizedBox(width: 40,),
            addicon(Icons.messenger_outline,"  138"),
            addicon(Icons.reset_tv,"  608"),
            addicon(Icons.favorite_border,"  4,267"),
            addicon(Icons.share,""),
          ],
        ),
        Divider(thickness: .5,color: Colors.grey,),
      ],
    );
  }
}
