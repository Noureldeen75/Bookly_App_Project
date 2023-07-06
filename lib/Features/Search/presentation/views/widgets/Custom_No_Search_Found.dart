import 'package:bookly/constants.dart';
import 'package:bookly/core/Utils/Styles.dart';
import 'package:flutter/material.dart';

class CustomNoSearchFound extends StatelessWidget {
  const CustomNoSearchFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
            child: SizedBox(
          height: 50.0,
        )),
        Opacity(
            opacity: 0.8,
            child: Image.asset(
              kSearchImage,
              width: MediaQuery.of(context).size.width,
            )),
        Text(
          'No Results Found Yet!',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle18.copyWith(color: Colors.grey[500]),
        ),
        Text(
          'You can serach to see results',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle18.copyWith(color: Colors.grey[500]),
        ),
        const Expanded(
            child: SizedBox(
          height: 50.0,
        )),
      ],
    );
  }
}
