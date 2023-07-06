import 'dart:math';
import 'package:bookly/Features/Home/data/models/book_model/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/Books_Rating.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/Custom_Book_Image.dart';
import 'package:bookly/core/Utils/Styles.dart';
import 'package:flutter/material.dart';

class SectionBookDetailsDescribtion extends StatelessWidget {
  const SectionBookDetailsDescribtion({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    double imageWidth = MediaQuery.of(context).size.width * 0.24;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: imageWidth),
          child: CustomBookImage(
              bookModel: bookModel),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          bookModel.volumeInfo!.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle23,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          bookModel.volumeInfo?.authors?[0] ?? 'Not Known',
          style: Styles.textStyle18
              .copyWith( color: Colors.grey[400]),
        ),
        const SizedBox(
          height: 12.0,
        ),
        BooksRating(
            mainAxisAlignment: MainAxisAlignment.center,
            // There is a problem in the Api to get the Reating, So I'll use a random values for rating..
            rating: (Random().nextDouble() * 4),
            count: Random().nextInt(5000)),
      ],
    );
  }
}
