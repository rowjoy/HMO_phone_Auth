// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

bool isactived = false;

class TabButton {
  static Center tabButton() {
    return Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 700),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: isactived ? Colors.red : Color(COLOR.coustomColors('00B27A')),
          borderRadius: BorderRadius.circular(50),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            isactived
                ? BoxShadow(
                    color: Colors.red.withOpacity(0.5),
                    blurRadius: 4,
                    spreadRadius: 4,
                    offset: Offset(0, 1), // Shadow position
                  )
                : BoxShadow(
                    color: Colors.green.withOpacity(0.5),
                    blurRadius: 4,
                    spreadRadius: 4,
                    offset: Offset(0, 1), // Shadow position
                  ),
          ],
        ),
        child: Center(
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  blurRadius: 4,
                  spreadRadius: 4,
                  offset: Offset(0, 0), // Shadow position
                ),
              ],
            ),
            child: Center(
              child: AspectRatio(
                aspectRatio: 1.3,
                child: Image.asset('assets/images/splashicon.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
