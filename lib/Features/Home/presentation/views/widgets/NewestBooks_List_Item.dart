import 'dart:math';
import 'package:bookly/Features/Home/data/models/book_model/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/Custom_Book_Image.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/Books_Rating.dart';
import 'package:bookly/core/Utils/AppRouter.dart';
import 'package:bookly/core/Utils/Styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewestBooksListItem extends StatelessWidget {
  const NewestBooksListItem({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: SizedBox(
          height: 120.0,
          child: Row(
            children: [
              CustomBookImage(bookModel: bookModel),
              const SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      bookModel.volumeInfo!.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle23,
                    ),
                    const SizedBox(height: 3.0),
                    Text(
                      bookModel.volumeInfo?.authors?[0] ?? 'Not Known',
                      style:
                          Styles.textStyle16.copyWith(color: Colors.grey[400]),
                    ),
                    const SizedBox(height: 3.0),
                    Row(
                      children: [
                        Text(
                          'Free\$',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.w900),
                        ),
                        const Spacer(
                          flex: 3,
                        ),
                        // There is a problem in the Api to get the Rating, So I'll use a random value..
                        BooksRating(
                            rating: (Random().nextDouble() * 4),
                            count: Random().nextInt(5000)),
                        const Spacer(),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
