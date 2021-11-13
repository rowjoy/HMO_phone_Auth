// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FromField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? margin;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final double? height;
  const FromField({
    Key? key,
    this.prefixIcon,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.suffixIcon,
    this.validator,
    this.margin,
    this.style,
    this.hintStyle,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: height,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: HexColor('#F6F6F6'),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: TextFormField(
              keyboardType: keyboardType,
              style: style,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: hintStyle,
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
