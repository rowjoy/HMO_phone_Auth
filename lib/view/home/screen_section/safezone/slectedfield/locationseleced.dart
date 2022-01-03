// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/view/home/screen_section/safezone/slectedfield/utils.dart';

class Locationseleced extends StatefulWidget {
  const Locationseleced({Key? key}) : super(key: key);

  @override
  _LocationgroupState createState() => _LocationgroupState();
}

class _LocationgroupState extends State<Locationseleced> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Location',
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
                value: locationitem,
                items: [
                  for (int i = 0; i < selectlocation.length; i++)
                    DropdownMenuItem(
                      value: i,
                      child: Text(selectlocation[i]),
                    ),
                ],
                onChanged: (int? value) {
                  setState(() {
                    locationitem = value!;
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
