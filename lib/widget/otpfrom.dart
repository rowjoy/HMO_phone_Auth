// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hmo/utils/colors.dart';

class OtpForm extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  const OtpForm({
    Key? key,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Color(COLOR.coustomColors('FFFFFF')),
        borderRadius: BorderRadius.circular(5),
        boxShadow: kElevationToShadow[1],
      ),
      child: TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        validator: validator,
        controller: controller,
        focusNode: focusNode,
        autofocus: true,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        obscureText: false,
        style: TextStyle(
            fontSize: 24, color: Color(COLOR.coustomColors('2F2E41'))),
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
