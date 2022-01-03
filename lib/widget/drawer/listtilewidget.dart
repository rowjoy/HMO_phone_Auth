// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

class Drawerlisttile extends StatelessWidget {
  final ImageProvider<Object>? image;
  final String? text;
  final void Function()? onTap;
  final void Function()? onLongPress;
  final bool? selected;

  const Drawerlisttile({
    Key? key,
    this.image,
    this.text,
    this.onLongPress,
    this.onTap,
    this.selected,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5, top: 3),
      child: ListTile(
        onTap: onTap,
        onLongPress: onLongPress,
        visualDensity: VisualDensity(horizontal: 0, vertical: -2.5),
        dense: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        selected: selected!,
        leading: ImageIcon(
          image,
          color: Color(COLOR.coustomColors('#303030')).withOpacity(0.8),
        ),
        title: Text(
          text!,
          style: TextStyle(
            color: Color(COLOR.coustomColors('#303030')).withOpacity(0.8),
            fontSize: 15,
          ),
        ),
        selectedTileColor:
            Color(COLOR.coustomColors('#00B27A')).withOpacity(0.2),
      ),
    );
  }
}
