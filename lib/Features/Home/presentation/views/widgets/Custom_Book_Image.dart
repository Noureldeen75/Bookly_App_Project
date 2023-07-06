import 'package:bookly/Features/Home/data/models/book_model/book_model/book_model.dart';
import 'package:bookly/core/Utils/AppRouter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: AspectRatio(
          aspectRatio: 1.3 / 2,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ??
                'https://d2sofvawe08yqg.cloudfront.net/beginningflutterwithdart/s_hero2x?1653781344',
            errorWidget: (context, url, error) => const Icon(
              Icons.error,
              size: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
