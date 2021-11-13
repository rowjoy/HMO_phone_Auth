// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Chousechip extends StatefulWidget {
  const Chousechip({
    Key? key,
  }) : super(key: key);

  @override
  State<Chousechip> createState() => _ChousechipState();
}

class _ChousechipState extends State<Chousechip> {
  bool maleselected = false;
  bool femaleselected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        ChoiceChip(
          autofocus: true,
          label: Container(
            height: 40,
            width: 100,
            child: Center(child: Text('Male')),
          ),
          labelStyle: TextStyle(
            fontFamily: 'Helvetica',
            color: maleselected ? Colors.white : HexColor('#707070'),
            fontWeight: FontWeight.normal,
          ),
          selected: maleselected,
          backgroundColor: HexColor('#F6F6F6'),
          pressElevation: 5,
          selectedColor: HexColor('#00B27A'),
          onSelected: (value) {
            setState(() {
              maleselected = value;
            });
          },
        ),
        SizedBox(
          width: 25,
        ),
        ChoiceChip(
          autofocus: true,
          label: Container(
            height: 40,
            width: 100,
            child: Center(child: Text('Female')),
          ),
          labelStyle: TextStyle(
            fontFamily: 'Helvetica',
            color: femaleselected ? Colors.white : HexColor('#707070'),
            fontWeight: FontWeight.normal,
          ),
          backgroundColor: HexColor('#F6F6F6'),
          selected: femaleselected,
          pressElevation: 5,
          selectedColor: HexColor('#00B27A'),
          onSelected: (value) {
            setState(() {
              femaleselected = value;
            });
          },
        )
      ],
    ));
  }
}
