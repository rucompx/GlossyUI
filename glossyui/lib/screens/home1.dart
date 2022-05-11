import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glossyui/widgets/header-card.dart';
import 'package:google_fonts/google_fonts.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int pageIndex = 0;

  final pages = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 18.0, left: 18.0, top: 10.0),
        child: Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hey, John Doe',
                  style:
                      GoogleFonts.nunito(fontSize: 29.0, color: Colors.white),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'What is your mood today?',
                  style:
                      GoogleFonts.nunito(fontSize: 16.0, color: Colors.white54),
                ),
                SizedBox(
                  height: 45.0,
                ),
                FadeInUp(
                    duration: Duration(milliseconds: 1000),
                    child: HeaderGlossyCard()),
                SizedBox(
                  height: 15.0,
                ),
                FadeInUp(
                    duration: Duration(milliseconds: 1100),
                    child: HeaderGlossyCard()),
                SizedBox(
                  height: 15.0,
                ),
                FadeInUp(
                    duration: Duration(milliseconds: 1200),
                    child: HeaderGlossyCard()),
                SizedBox(
                  height: 15.0,
                ),
                FadeInUp(
                    duration: Duration(milliseconds: 1300),
                    child: HeaderGlossyCard()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
