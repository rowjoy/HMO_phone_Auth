// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

class Locationinfo extends StatelessWidget {
  final String? location;
  final void Function()? onTap;
  const Locationinfo({
    Key? key,
    this.location,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: ListTile(
          title: Text(
            location!,
            style: TextStyle(
              color: Color(
                COLOR.coustomColors('#707070'),
              ),
              fontSize: 15,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15,
            color: Colors.black,
          ),
          tileColor: Color(COLOR.coustomColors('#F6F6F6')),
          visualDensity: VisualDensity(horizontal: 0, vertical: -2),
          onTap: onTap,
          onLongPress: () {},
        ),
      ),
    );
  }
}
