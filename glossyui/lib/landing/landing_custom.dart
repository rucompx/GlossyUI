import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glossyui/landing/custom_bottom_nav.dart';
import 'package:glossyui/screens/profile/profile.dart';
import 'package:glossyui/widgets/header-card.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/home/home_altarnatif1.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff191919),
        bottomNavigationBar: _buildBottomBar(),
        body: getBody());
  }

  Widget _buildBottomBar() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 28.0, right: 18.0, left: 18.0),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white12,
                  Color(0xff191919),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.clamp),
            borderRadius: BorderRadius.circular(14.0)),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withOpacity(.4),
                  width: 0.09,
                ),
                color: Color(0xff2F2F2F),
                borderRadius: BorderRadius.circular(14.0)),
            child: CustomAnimatedBottomBar(
              containerHeight: 35,
              selectedIndex: _currentIndex,
              backgroundColor: Colors.transparent,
              showElevation: true,
              itemCornerRadius: 24,
              curve: Curves.easeIn,
              onItemSelected: (index) => setState(() => _currentIndex = index),
              items: <BottomNavyBarItem>[
                BottomNavyBarItem(
                  icon: Icon(CupertinoIcons.home),
                  title: Text('Home'),
                  activeColor: Color(0xffFD5D5B),
                  inactiveColor: Color.fromARGB(255, 81, 81, 81),
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: Icon(CupertinoIcons.chat_bubble_text),
                  title: Text('Users'),
                  activeColor: Color(0xffFD5D5B),
                  inactiveColor: Color.fromARGB(255, 81, 81, 81),
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: Icon(CupertinoIcons.person),
                  title: Text(
                    'Messages ',
                  ),
                  activeColor: Color(0xffFD5D5B),
                  inactiveColor: Color.fromARGB(255, 81, 81, 81),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      Container(alignment: Alignment.center, child: HomeAltarnatif1()),
      Container(
        alignment: Alignment.center,
        child: Text('data'),
      ),
      Container(
        alignment: Alignment.center,
        child: AccountPage(),
      ),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
