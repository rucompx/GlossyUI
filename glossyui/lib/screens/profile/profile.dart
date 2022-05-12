import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatefulWidget {
  final String? userID;
  const AccountPage({
    Key? key,
    this.userID,
  }) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

var _isDarkMode;
final scaffoldKey = GlobalKey<ScaffoldState>();

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    _isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
        backgroundColor: Color(0xff191919),
        key: scaffoldKey,
        body: Stack(
          children: <Widget>[
            CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  actions: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.4),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 3,
                            left: 3,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                  expandedHeight: 400,
                  backgroundColor: Color(0xff191919),
                  flexibleSpace: FlexibleSpaceBar(
                    collapseMode: CollapseMode.pin,
                    background: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/2.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                              Color(0xff424242),
                              Color(0xff424242).withOpacity(.1)
                            ])),
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate([
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "John Doe, 24",
                                style: GoogleFonts.nunito(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xffFD5D5B),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text("Madrid, Spain",
                                      style: GoogleFonts.nunito(
                                          color: Colors.white54,
                                          fontSize: 16.0)),
                                ],
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xffFFA912),
                                            Color(0xffFD5D5B),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 35.0,
                                  ),
                                  CircleAvatar(
                                    radius: 38.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ]),
                )
              ],
            ),
          ],
        ));
  }
}
