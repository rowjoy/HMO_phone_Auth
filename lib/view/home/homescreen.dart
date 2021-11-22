// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/view/contact/contact.dart';
import 'package:hmo/view/emergancy/emargancy.dart';
import 'package:hmo/view/home/home.dart';

class Homescreen extends StatefulWidget {
  static const String path = "Homescreen";
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int indexnumber = 0;
  List pages = [
    Homepage(),
    Contactpage(),
    Emargancypage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.grey.withOpacity(0.1),
        child: Row(
          children: [
            bottomnavigationitem(
              0,
              context,
              Icons.home,
              'Home',
              BorderRadius.only(
                topLeft: Radius.circular(0),
                bottomLeft: Radius.circular(0),
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
            bottomnavigationitem(
                1, context, Icons.people, 'contact', BorderRadius.circular(5)),
            bottomnavigationitem(
              2,
              context,
              Icons.add_moderator_rounded,
              'Emargency',
              BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                topRight: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
            ),
          ],
        ),
      ),
      body: pages[indexnumber],
    );
  }

  Widget bottomnavigationitem(int index, BuildContext context, IconData icon,
      String lebel, BorderRadiusGeometry borderRadius) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indexnumber = index;
        });
      },
      child: Container(
        height: 56,
        width: MediaQuery.of(context).size.width * 1 / 3,
        decoration: BoxDecoration(
          color: index == indexnumber
              ? Color(COLOR.coustomColors('00B27A'))
              : Colors.transparent,
          borderRadius:
              index == indexnumber ? borderRadius : BorderRadius.circular(0),
        ),
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 4),
            child: Column(
              children: [
                Icon(
                  icon,
                  color: index == indexnumber ? Colors.white : Colors.black,
                ),
                Text(
                  lebel,
                  style: index == indexnumber
                      ? TextStyle(color: Colors.white)
                      : TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
