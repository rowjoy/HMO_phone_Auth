// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

class Userinfo extends StatelessWidget {
  final String? frieldname;
  final String? userdata;
  final void Function()? onLongPress;
  final void Function()? editonTap;
  const Userinfo({
    Key? key,
    this.frieldname,
    this.userdata,
    this.editonTap,
    this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              frieldname!,
              style: TextStyle(
                fontSize: 12,
                color: Color(
                  COLOR.coustomColors('#747474'),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 5, top: 3, left: 10, right: 10),
            child: ListTile(
              onLongPress: onLongPress,
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              title: Text(
                userdata!,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(
                    COLOR.coustomColors('#747474'),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: editonTap,
                icon: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              tileColor: Color(COLOR.coustomColors('#F6F6F6')),
            ),
          )
        ],
      ),
    );
  }
}
