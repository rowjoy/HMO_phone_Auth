// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

class Genderedit extends StatefulWidget {
  const Genderedit({Key? key}) : super(key: key);

  @override
  _GendereditState createState() => _GendereditState();
}

class _GendereditState extends State<Genderedit> {
  var genderitem = 0;
  List gendergroup = [
    'Male',
    'Female',
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
                value: genderitem,
                items: [
                  for (int i = 0; i < gendergroup.length; i++)
                    DropdownMenuItem(
                      value: i,
                      child: Text(gendergroup[i]),
                    ),
                ],
                onChanged: (int? value) {
                  setState(() {
                    genderitem = value!;
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
