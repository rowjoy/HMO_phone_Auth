// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/view/home/screen_section/safezone/slectedfield/utils.dart';

class Bloodgroup extends StatefulWidget {
  const Bloodgroup({Key? key}) : super(key: key);

  @override
  _BloodgroupState createState() => _BloodgroupState();
}

class _BloodgroupState extends State<Bloodgroup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Blood Group',
            style: TextStyle(
              color: Color(COLOR.coustomColors('#747474')),
              fontSize: 15,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(COLOR.coustomColors('#F6F6F6')),
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
                value: blooditem,
                items: [
                  for (int i = 0; i < selectBloodgroup.length; i++)
                    DropdownMenuItem(
                      value: i,
                      child: Text(selectBloodgroup[i]),
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
