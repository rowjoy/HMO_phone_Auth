// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/utils/varibales.dart';

class BloodSelectedchip extends StatefulWidget {
  const BloodSelectedchip({Key? key}) : super(key: key);

  @override
  _BloodRegistrationState createState() => _BloodRegistrationState();
}

class _BloodRegistrationState extends State<BloodSelectedchip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Blood group',
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#707070')),
                          fontSize: 15,
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  bloodchip('O+', 1),
                                  bloodchip('O-', 2),
                                  bloodchip('A-', 3),
                                  bloodchip('A+', 4),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  bloodchip('B+', 5),
                                  bloodchip('B-', 6),
                                  bloodchip('AB-', 7),
                                  bloodchip('AB+', 8),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bloodchip(String name, int number) {
    return ChoiceChip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      autofocus: true,
      label: Center(
        child: Text(
          name,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      labelStyle: TextStyle(
        color: bloodchipvalue == number
            ? Colors.white
            : Color(COLOR.coustomColors('#707070')),
        fontWeight: FontWeight.w600,
        fontSize: 11,
      ),
      selected: bloodchipvalue == number,
      backgroundColor: Color(COLOR.coustomColors('#F6F6F6')),
      pressElevation: 5,
      selectedColor: Color(COLOR.coustomColors('#FF4C4C')),
      onSelected: (value) {
        setState(() {
          if (value) {
            bloodchipvalue = number;
          } else {
            bloodchipvalue = 0;
          }
        });
      },
    );
  }
}
