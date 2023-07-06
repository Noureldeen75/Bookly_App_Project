import 'package:bookly/Features/Home/data/home_repos/home_repos_impl.dart';
import 'package:bookly/Features/Home/data/models/book_model/book_model/book_model.dart';
import 'package:bookly/Features/Home/presentation/manager/SimilarBooksCubit/SimilarBooksCubit.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/BookDetails_View_Body.dart';
import 'package:bookly/core/Utils/Get_It.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>())..getBooks(),
      child: SafeArea(
        child: Scaffold(
          body: BookDetailsViewBody(bookModel: bookModel),
        ),
      ),
    );
  }
}
