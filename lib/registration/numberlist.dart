// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

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
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 8,
      ),
      height: 55,
      decoration: BoxDecoration(
        color: Color(COLOR.coustomColors('F6F6F6')),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: CircleAvatar(
              backgroundColor: Color(COLOR.coustomColors('F6F6F6')),
              child: Icon(
                Icons.person,
                color: Colors.grey,
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name!,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(
                      COLOR.coustomColors('707070'),
                    ),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  number!,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(
                      COLOR.coustomColors('747474'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
