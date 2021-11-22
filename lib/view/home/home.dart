// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/view/home/screen_section/activebutton.dart';
import 'package:hmo/view/home/screen_section/bloodrequest.dart';
import 'package:hmo/view/home/screen_section/helpmeout.dart';
import 'package:hmo/view/home/screen_section/plasamarequest.dart';
import 'package:hmo/view/home/screen_section/safezone.dart';

class Homepage extends StatefulWidget {
  static const String path = "Homepage";
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_active,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isactived == false) {
                        isactived = true;
                      } else {
                        isactived = false;
                      }
                    });
                  },
                  child: TabButton.tabButton(),
                ),
                // Text part
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Tap & Hold to active HMO',
                        style: TextStyle(
                          color: Color(
                            COLOR.coustomColors('707070'),
                          ),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ImageIcon(
                        AssetImage(
                          'assets/icons/Group 445@1X.png',
                        ),
                        size: 10,
                      ),
                    ],
                  ),
                ),
                Safezone(),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Tap any feature to get help',
                        style: TextStyle(
                          color: Color(
                            COLOR.coustomColors('707070'),
                          ),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ImageIcon(
                        AssetImage(
                          'assets/icons/Group 445@1X.png',
                        ),
                        size: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Helpmeout(),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Tap the card to see details',
                        style: TextStyle(
                          color: Color(
                            COLOR.coustomColors('707070'),
                          ),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ImageIcon(
                        AssetImage(
                          'assets/icons/Group 445@1X.png',
                        ),
                        size: 10,
                      ),
                    ],
                  ),
                ),
                BloodRequest(),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Tap the card to see details',
                        style: TextStyle(
                          color: Color(
                            COLOR.coustomColors('707070'),
                          ),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ImageIcon(
                        AssetImage(
                          'assets/icons/Group 445@1X.png',
                        ),
                        size: 10,
                      ),
                    ],
                  ),
                ),
                PlasamaRequest(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
