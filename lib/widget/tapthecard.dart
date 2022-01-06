// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

class TapThaeCard extends StatefulWidget {
  const TapThaeCard({Key? key}) : super(key: key);

  @override
  _TapThaeCardState createState() => _TapThaeCardState();
}

class _TapThaeCardState extends State<TapThaeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Tap the card to see details',
            style: TextStyle(
              color: Color(
                COLOR.coustomColors('707070'),
              ),
              fontSize: 12,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Image.asset(
            'assets/images/Group 445@1X.png',
            height: 10,
            width: 10,
          ),
        ],
      ),
    );
  }
}
