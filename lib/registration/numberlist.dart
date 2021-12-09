// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

class Numberlist extends StatelessWidget {
  final String? name;
  final String? number;
  final bool? selected;
  final void Function()? onLongPress;
  final void Function()? onTab;
  final Color? namecolor;
  final Color? numbercolor;
  const Numberlist({
    Key? key,
    this.name,
    this.number,
    this.selected,
    this.onLongPress,
    this.onTab,
    this.namecolor,
    this.numbercolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        tileColor: Color(COLOR.coustomColors('#F6F6F6')),
        selectedTileColor: Colors.blue,
        onLongPress: onLongPress,
        onTap: onTab,
        selected: selected!,
        leading: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.person,
            color: Colors.blue,
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
                  color: namecolor,
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
                  color: numbercolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
