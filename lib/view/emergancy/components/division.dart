// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

class Division extends StatefulWidget {
  const Division({Key? key}) : super(key: key);

  @override
  _ServiseState createState() => _ServiseState();
}

class _ServiseState extends State<Division> {
  var serviseitem = 0;
  List selectDivision = [
    "Dhaka",
    "Chittagong",
    "Barishal ",
    "Mymensingh",
    "Khulna",
    "Rajshahi",
    "Rangpur",
    "Sylhet",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: DropdownButton(
          elevation: 0,
          dropdownColor: Colors.white.withOpacity(0.8),
          isExpanded: true,
          underline: SizedBox(),
          iconSize: 30,
          style: TextStyle(
            color: Color(COLOR.coustomColors('#747474')),
            fontSize: 12,
          ),
          value: serviseitem,
          items: [
            for (int i = 0; i < selectDivision.length; i++)
              DropdownMenuItem(
                value: i,
                child: Text(selectDivision[i]),
              ),
          ],
          onChanged: (int? value) {
            setState(() {
              serviseitem = value!;
            });
          },
        ),
      ),
    );
  }
}
