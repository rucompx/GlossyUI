import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderGlossyCard extends StatefulWidget {
  const HeaderGlossyCard({Key? key}) : super(key: key);

  @override
  State<HeaderGlossyCard> createState() => _HeaderGlossyCardState();
}

class _HeaderGlossyCardState extends State<HeaderGlossyCard> {
  String? productType;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white.withOpacity(.3),
            width: 0.04,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xff191919),
              spreadRadius: -8,
              blurRadius: 21.0,
              offset: Offset(10, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(colors: [
            Color(0xff2C2C2C).withOpacity(0.9),
            Color(0xff191919).withOpacity(0.1),
          ], begin: Alignment.topLeft, end: Alignment.centerRight)),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Casual',
              style: GoogleFonts.nunito(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              "You wish to seize the moment. Let the sparks fly!",
              style: GoogleFonts.nunito(
                  color: Colors.white54,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0),
            )
          ],
        ),
      ),
    );
  }
}
