// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String? buttonname;
  final EdgeInsetsGeometry? padding;
  const ButtonWidget({
    Key? key,
    this.onPressed,
    this.buttonname,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding!,
      child: SizedBox(
        height: 55,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(HexColor('#00B27A')),
          ),
          onPressed: onPressed,
          child: Text(
            buttonname!,
            style: TextStyle(
              fontFamily: 'Helvetica',
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
