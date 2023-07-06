import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToast(
  String message,
  bool condition,
) async {
  Color color;
  if (condition) {
    color = Colors.grey;
  } else {
    color = Colors.red;
  }
  await Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: color,
      textColor: Colors.black,
      fontSize: 16.0);
}