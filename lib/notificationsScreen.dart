import 'package:flutter/material.dart';

class notificationsPage extends StatefulWidget {
  const notificationsPage({Key? key}) : super(key: key);

  @override
  State<notificationsPage> createState() => _notificationsPageState();
}

class _notificationsPageState extends State<notificationsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: Color(0xff212121),
            appBar: AppBar(
              elevation: 1,
              shadowColor: Colors.grey,
              backgroundColor: Color(0xff212121),
              leading: const Padding(
                padding: EdgeInsets.all(10),
                child:
                CircleAvatar(radius: 10,backgroundColor: Color(0xff212121),backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1565209248954568705/vNe5IS7M_400x400.jpg"),),
              ),
              title: Text("Notifications"),
              actions: const [
                Icon(Icons.settings_outlined,size: 26,)
              ],
              bottom: const TabBar(
                indicatorColor: Color(0xff00aeef),
                tabs: [
                  Tab(child: Text("All"),),
                  Tab(child: Text("Mentions"),),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                //first tab
                Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      right: 20,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff00aeef),
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: const Center(
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.all(15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  CircleAvatar(backgroundColor: Color(0xff212121),backgroundImage: AssetImage("asset/twitter.png"),radius: 15,),
                                  SizedBox(width: 10,),
                                  Text(
                                      "There was a login to your account\n@xx_friction from a new device on Oct\n22, 2022. Review it now.",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Divider(color: Colors.grey,thickness: .4,)
                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.all(20),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.star,size: 25,color: Colors.purple[400]!,),
                                  SizedBox(width: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      CircleAvatar(radius: 16,backgroundImage: AssetImage("asset/notification.jpg"),backgroundColor: Color(0xff212121),),
                                      SizedBox(height: 10,),
                                      Text(
                                        "Recommended For You",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(
                                        "P4u com p4u tambem e legal!",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Icon(Icons.more_vert,color: Colors.grey,),
                                ],
                              ),
                            ),
                            Divider(color: Colors.grey,thickness: .4,)
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                //tab 2
                Stack(
                  children: [
                    Positioned(
                      bottom: 10,
                      right: 20,
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xff00aeef),
                            borderRadius: BorderRadius.circular(100)
                        ),
                        child: const Center(
                          child: Icon(Icons.add,color: Colors.white,),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 280,
                            height: 180,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://www.activemarketing.com/wp-content/uploads/2012/06/twitter-blog-post1.png"),
                                  fit: BoxFit.contain,
                                )
                            ),
                          ),
                          SizedBox(height: 20,),
                          const Text(
                            "Join the\nconversation",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35
                            ),
                          ),
                          SizedBox(height: 10,),
                          const Text(
                            "When someone on Twitter mentions you in\na Tweet or reply, you'll find it here.",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
        ),
    );
  }
}
