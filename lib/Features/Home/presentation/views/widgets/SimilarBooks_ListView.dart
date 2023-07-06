import 'package:bookly/Features/Home/presentation/manager/SimilarBooksCubit/SimilarBooksCubit.dart';
import 'package:bookly/Features/Home/presentation/manager/SimilarBooksCubit/SimilarBooksStates.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/Custom_Book_Image.dart';
import 'package:bookly/core/widgets/Custom_Error.dart';
import 'package:bookly/core/widgets/Customs_Shimmer/Custom_Shimmer_SimilarBooks_List.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksStates>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessState) {
          return SizedBox(
            height: 120.0,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomBookImage(
                      bookModel: state.bookModelsList[index],
                    ),
                separatorBuilder: (context, index) => const SizedBox(width: 8.0),
                itemCount: state.bookModelsList.length),
          );
        } else if (state is SimilarBooksFailureState) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const CustomShimmerSimilarBooksList();
        }
      },
    );
  }
}
