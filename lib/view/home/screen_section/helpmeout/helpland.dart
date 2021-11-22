// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

class Helpsignal extends StatelessWidget {
  final String? name;
  final Color? color;
  const Helpsignal({
    Key? key,
    this.name,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          Text(
            name!,
            style: TextStyle(
              color: Color(COLOR.coustomColors('#707070')),
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
