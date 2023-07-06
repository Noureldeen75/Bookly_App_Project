import 'package:bookly/core/Utils/ColorsClass.dart';
import 'package:flutter/material.dart';

class CustomShimmerBookItem extends StatelessWidget {
  const CustomShimmerBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        decoration: BoxDecoration(
            color: ColorsClass.kShimmerBaseColor,
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
