// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_constructors, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

class Genterchip extends StatefulWidget {
  const Genterchip({Key? key}) : super(key: key);

  @override
  _GenterchipState createState() => _GenterchipState();
}

class _GenterchipState extends State<Genterchip> {
  int value = 0;
  Widget genterchip(String name, int number) {
    return ChoiceChip(
      autofocus: true,
      label: Container(
        height: 30,
        width: 80,
        child: Center(
          child: Text(name),
        ),
      ),
      labelStyle: TextStyle(
        color: value == number
            ? Colors.white
            : Color(COLOR.coustomColors('#707070')),
        fontWeight: FontWeight.w600,
        fontSize: 11,
      ),
      selected: value == number,
      backgroundColor: Color(COLOR.coustomColors('F6F6F6')),
      pressElevation: 5,
      selectedColor: Color(COLOR.coustomColors('00B27A')),
      onSelected: (value) {
        setState(() {
          if (value) {
            this.value = number;
          } else {
            this.value = 0;
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 15,
        children: [
          genterchip('Male', 1),
          genterchip('Female', 2),
        ],
      ),
    );
  }
}
