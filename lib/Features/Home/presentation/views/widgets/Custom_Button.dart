import 'package:bookly/core/Utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {required this.title,
      required this.borderRadius,
      required this.titleColor,
      required this.backgroundColor, 
      this.onpressed});

  final String title;
  final Color titleColor;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 7.0),
          child: Text(
            title,
            style: Styles.textStyle18
                .copyWith(color: titleColor, fontWeight: FontWeight.w900),
          ),
        ));
  }
}
