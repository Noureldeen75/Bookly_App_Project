import 'package:bookly/Features/Home/data/models/book_model/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/Custom_BookAction_Button.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/Custom_BookDetails_Appbar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/Section_BookDetails_Describtion.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/SimilarBooks_ListView.dart';
import 'package:bookly/core/Utils/Styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 22.0, vertical: 15.0),
          child: CustomBookDetailsAppbar(),
        ),
        Expanded(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 22.0, vertical: 15.0),
                  child: Column(
                    children: [
                      SectionBookDetailsDescribtion(bookModel: bookModel),
                      const SizedBox(
                        height: 40.0,
                      ),
                      CustomBookActionButton(bookModel: bookModel,),
                      const Expanded(
                        child: SizedBox(
                          height: 40.0,
                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          'You can also like',
                          style: Styles.textStyle18,
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const SimilarBooksListView(),
                      const SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

