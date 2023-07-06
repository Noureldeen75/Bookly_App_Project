import 'package:bookly/core/Utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BooksRating extends StatelessWidget {
  const BooksRating(
      {this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count});

  final double rating;
  final int count;

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDF00),
          size: 20.0,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          rating.toStringAsFixed(1),
          style: Styles.textStyle18,
        ),
        const SizedBox(
          width: 3.0,
        ),
        Text('(${count.toString()})',
            style: Styles.textStyle16.copyWith(color: Colors.grey[500])),
      ],
    );
  }
}
