// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

class Appbar extends StatelessWidget {
  final String? text;
  final Widget? trailing;
  const Appbar({
    Key? key,
    this.text,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            text!,
            style: TextStyle(
              color: Color(
                COLOR.coustomColors('#242424'),
              ),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        trailing: trailing,
      ),
    );
  }
}
