// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_constructors, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/utils/varibales.dart';

class Genterchip extends StatefulWidget {
  const Genterchip({Key? key}) : super(key: key);

  @override
  _GenterchipState createState() => _GenterchipState();
}

class _GenterchipState extends State<Genterchip> {
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
        color: chousechipvalues == number
            ? Colors.white
            : Color(COLOR.coustomColors('#707070')),
        fontWeight: FontWeight.w600,
        fontSize: 11,
      ),
      selected: chousechipvalues == number,
      backgroundColor: Color(COLOR.coustomColors('F6F6F6')),
      pressElevation: 5,
      selectedColor: Color(COLOR.coustomColors('00B27A')),
      onSelected: (value) {
        setState(() {
          if (value) {
            chousechipvalues = number;
          } else {
            chousechipvalues = 1;
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print(chousechipvalues);
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
