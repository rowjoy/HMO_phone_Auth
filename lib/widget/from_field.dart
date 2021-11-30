// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hmo/utils/colors.dart';

class TextFromFields extends StatelessWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  const TextFromFields({
    Key? key,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        controller: controller,
        validator: validator,
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 4, bottom: 4, left: 4),
          filled: true,
          fillColor: Color(COLOR.coustomColors('F6F6F6')),
          hintText: hintText,
          errorStyle: TextStyle(
            fontSize: 11,
            color: Colors.red,
          ),
          hintStyle: TextStyle(
            fontSize: 12,
            color: Color(
              COLOR.coustomColors('707070'),
            ),
            fontWeight: FontWeight.w600,
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: BorderSide(color: Colors.redAccent),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
