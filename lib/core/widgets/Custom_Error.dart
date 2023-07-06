import 'package:bookly/core/Utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errMessage});

  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        errMessage,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Styles.textStyle20,
      ),
    );
  }
}
