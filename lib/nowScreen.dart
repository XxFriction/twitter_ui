
import 'package:flutter/material.dart';
import 'package:twitter_ui/animation.dart';

class nowPage extends StatefulWidget {
  const nowPage({Key? key}) : super(key: key);

  @override
  State<nowPage> createState() => _nowPageState();
}

class _nowPageState extends State<nowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.grey,
        backgroundColor: Color(0xff212121),
        title:  Text("Spaces"),
        leading: Padding(padding: EdgeInsets.all(10),
          child: CircleAvatar(radius: 2,backgroundColor: Color(0xff212121),backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1565209248954568705/vNe5IS7M_400x400.jpg"),),
        )


      ),
      body: Padding(padding: EdgeInsets.only(top: 20,left: 10,right: 10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Happening Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),
                ),
                const Text(
                  "Spaces going on right now",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18
                  ),
                ),
                Row(
                  children: const [
                    Icon(Icons.star,color: Colors.yellow,),
                    SizedBox(width: 8,),
                    Text(
                      "Top Host",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    )
                  ],
                ),
                addnow("RenewedHope2023...National Security: Reposition the\npolice", Color(0xff683bab), "Aisha", "Salut tout le monde 🤗. Je suis Nigeriane et Avocate. J'habite a Abuja.", Color(0xff593392), AssetImage("asset/av3.png")),
                addnow("NFT Lounge : Come To Present Yor Project\n", Color(0xff0276ab), "Mongoose Club", "Mongoose Club is a community-driven NFT ecosystem in the making. To Join Discord,..", Color(0xff026592), AssetImage("asset/av2.jpg")),
                addnow("#NFTartists with heart and collectors who R drunk and rich!\n🤑👀🔥",Colors.pink,"Matthew L. Bonnstetter","#NFTartists with heart supporter, collector & artist. #ReFi (Regenerative "
                    "finance) research..",Color(0xff9c225D),AssetImage("asset/av1.png")),
              ],
            ),
          ],
        )
      )
        
      
    );
  }
  Container addnow(String title,Color maincolor,String owner,String description,Color secondcolor,AssetImage img){
    return Container(
      margin: EdgeInsets.all(4),
      width: 370,
      height: 270,
      decoration: BoxDecoration(
          color: maincolor,
          borderRadius: BorderRadius.circular(14)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            child: Row(
              children: [
                //Icon(Icons.l)
                Container(
                  child: animation(),
                  margin: EdgeInsets.all(5),
                ),
                const Text(
                  "LIVE",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                Icon(Icons.more_vert,color: Colors.white,)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(6),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(4),
                width: 55,
                //color: Colors.grey,
                child: Stack(
                  children: const [
                    CircleAvatar(radius: 10,backgroundImage: AssetImage("asset/av1.png"),),
                    Positioned(
                      left: 15,
                      child: CircleAvatar(radius: 10,backgroundColor: Colors.yellow,backgroundImage: AssetImage("asset/av2.jpg"),),),
                    Positioned(
                      left: 30,
                      child: CircleAvatar(radius: 10,backgroundColor: Colors.black,backgroundImage: AssetImage("asset/av3.png"),),),
                  ],
                ),
              ),
              Text("926 listening",style: TextStyle(color: Colors.white),)
            ],
          ),
          SizedBox(height: 10,),
          Container(
            width: 370,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
                color: secondcolor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 10),
                  child:Row(
                    children: [
                      SizedBox(width: 10,),
                      CircleAvatar(radius: 12,backgroundColor: secondcolor,backgroundImage: img),
                      SizedBox(width: 10,),
                      Text(owner,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Container(
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        child: const Center(
                          child: Text("Host",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10,top: 10),
                  child: Text(description,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
