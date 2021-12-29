import 'package:flutter/material.dart';

showsnckbers(BuildContext context, label, dismissDirection) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(label),
      dismissDirection: dismissDirection,
      duration: const Duration(seconds: 1),
    ),
  );
}
