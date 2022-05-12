import 'package:flutter/material.dart';
import 'package:glossyui/widgets/header-card.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAltarnatif1 extends StatefulWidget {
  const HomeAltarnatif1({Key? key}) : super(key: key);

  @override
  State<HomeAltarnatif1> createState() => _HomeAltarnatif1State();
}

class _HomeAltarnatif1State extends State<HomeAltarnatif1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191919),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 75.0,
            ),
            Expanded(
              flex: 1,
              child: Text('Hey, John Doe',
                  style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold)),
            ),
            Expanded(
              flex: 1,
              child: Text('What is your mood today? ',
                  style: GoogleFonts.nunito(
                      color: Colors.white54, fontSize: 16.0)),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    child: HeaderGlossyCard(),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: HeaderGlossyCard(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    child: HeaderGlossyCard(),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    child: HeaderGlossyCard(),
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
