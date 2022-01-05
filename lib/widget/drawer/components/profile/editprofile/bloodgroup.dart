// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

class Bloodedit extends StatefulWidget {
  const Bloodedit({Key? key}) : super(key: key);

  @override
  _GendereditState createState() => _GendereditState();
}

class _GendereditState extends State<Bloodedit> {
  var blooditem = 0;
  List bloodgroup = [
    "A+",
    "O+",
    "B+",
    "AB+",
    "A-",
    "O-",
    "B-",
    "AB-",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Blood Group',
            style: TextStyle(
              color: Color(COLOR.coustomColors('#747474')),
              fontSize: 12,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            height: 50,
            decoration: BoxDecoration(
              color: Color(COLOR.coustomColors('#F6F6F6')),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: DropdownButton(
                elevation: 0,
                dropdownColor: Colors.white.withOpacity(0.9),
                isExpanded: true,
                underline: SizedBox(),
                iconSize: 30,
                style: TextStyle(
                  color: Color(COLOR.coustomColors('#747474')),
                  fontSize: 15,
                ),
                value: blooditem,
                items: [
                  for (int i = 0; i < bloodgroup.length; i++)
                    DropdownMenuItem(
                      value: i,
                      child: Text(bloodgroup[i]),
                    ),
                ],
                onChanged: (int? value) {
                  setState(() {
                    blooditem = value!;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
