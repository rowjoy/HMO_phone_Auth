// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hmo/Map/tabpages/activehmo.dart';
import 'package:hmo/Map/tabpages/hospital.dart';
import 'package:hmo/Map/tabpages/police.dart';
import 'package:hmo/Map/tabpages/trusted.dart';
import 'package:hmo/Map/tabpages/varifidehmo.dart';
import 'package:hmo/utils/colors.dart';

class ActiveStatus extends StatefulWidget {
  const ActiveStatus({Key? key}) : super(key: key);

  @override
  _ActiveStatusState createState() => _ActiveStatusState();
}

class _ActiveStatusState extends State<ActiveStatus> {
  final String svgname = 'assets/svg/Hospital.svg';
  int indexnumber = 2;
  List tabpage = [
    Hospitaltap(),
    Varifidehmotab(),
    Trustedtab(),
    Activehmotab(),
    Policetab()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: tabpage[indexnumber],
          ),
          Positioned(
            bottom: 15,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  maptabview(
                      0, context, 'Active HMO', 'assets/svg/Active HMO.png'),
                  maptabview(1, context, 'Verified HMO',
                      'assets/svg/Verified HMO.png'),
                  maptabview(2, context, 'Police', 'assets/svg/Police.png'),
                  maptabview(3, context, 'Hospital', 'assets/svg/Hospital.png'),
                  maptabview(4, context, 'Trusted', 'assets/svg/Trusted.png')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget maptabview(
      int index, BuildContext context, String data, String assetName) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indexnumber = index;
        });
      },
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width * 1 / 5.4,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: kElevationToShadow[4],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageIcon(
              AssetImage(assetName),
              size: 15,
              color: index == indexnumber
                  ? Color(COLOR.coustomColors('#00B27A'))
                  : Colors.grey,
            ),
            Text(
              data,
              style: TextStyle(
                color: index == indexnumber
                    ? Color(COLOR.coustomColors('#00B27A'))
                    : Colors.grey,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
