// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

class PSelectBloodGroup extends StatefulWidget {
  const PSelectBloodGroup({Key? key}) : super(key: key);

  @override
  _BloodgroupState createState() => _BloodgroupState();
}

class _BloodgroupState extends State<PSelectBloodGroup> {
  var pbloodgroupitem = 0;
  List pselectBloodbankgroup = [
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
      width: MediaQuery.of(context).size.width * 1 / 2.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Blood Group',
            style: TextStyle(
              color: Color(COLOR.coustomColors('#747474')),
              fontSize: 15,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: DropdownButton(
                elevation: 0,
                dropdownColor: Colors.white.withOpacity(0.9),
                isExpanded: true,
                // ignore: prefer_const_constructors
                underline: SizedBox(),
                iconSize: 30,
                style: TextStyle(
                  color: Color(COLOR.coustomColors('#747474')),
                  fontSize: 15,
                ),
                value: pbloodgroupitem,
                items: [
                  for (int i = 0; i < pselectBloodbankgroup.length; i++)
                    DropdownMenuItem(
                      value: i,
                      child: Text(pselectBloodbankgroup[i]),
                    ),
                ],
                onChanged: (int? value) {
                  setState(() {
                    pbloodgroupitem = value!;
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
