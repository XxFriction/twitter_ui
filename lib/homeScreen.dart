import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:twitter_ui/mainScreen.dart';
import 'inboxScreen.dart';
import 'notificationsScreen.dart';
import 'nowScreen.dart';
import 'searchScreen.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int selectedPage = 0;
  final _pageOptions = [
    mainPage(),
    searchPage(),
    nowPage(),
    notificationsPage(),
    inboxPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xff212121),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
          border: const Border(
            top: BorderSide(
              color: Colors.grey,
              width: .08
            )
          )
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 14,vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.white,
              tabs: const[
                GButton(
                    icon: Icons.home,
                  text: "",
                ),
                GButton(
                    icon: Icons.search,
                  text: "",
                ),
                GButton(
                    icon: Icons.mic,
                  text: "",
                ),
                GButton(
                    icon: Icons.notifications,
                  text: "",
                ),
                GButton(
                    icon: Icons.email,
                  text: "",
                ),
              ],
              selectedIndex: selectedPage,
              onTabChange: (index){
                setState(() {
                  selectedPage = index;
                });
              },
            )
          ),
        ),
      ),
    );
  }
}
