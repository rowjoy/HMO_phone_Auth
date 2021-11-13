// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Numberlist extends StatelessWidget {
  final String? name;
  final String? number;
  const Numberlist({
    Key? key,
    this.name,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: HexColor('#F6F6F6'),
        boxShadow: kElevationToShadow[4],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: ListTile(
          contentPadding: EdgeInsets.only(bottom: 10, left: 25),
          tileColor: Colors.white,
          leading: Icon(
            Icons.person,
            size: 37,
          ),
          title: Text(
            name!,
            style: Theme.of(context).textTheme.headline6,
          ),
          subtitle: Text(number!),
        ),
      ),
    );
  }
}
