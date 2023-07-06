import 'package:bookly/Features/Home/presentation/manager/FeaturedBooksCubit/FeaturedBooksCubit.dart';
import 'package:bookly/Features/Home/presentation/manager/FeaturedBooksCubit/FeaturedBooksStates.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/Custom_Book_Image.dart';
import 'package:bookly/core/widgets/Custom_Error.dart';
import 'package:bookly/core/widgets/Customs_Shimmer/Custom_Shimmer_FeaturedBooks_List.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksStates>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(
                start: 20.0, top: 25, bottom: 10.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CustomBookImage(
                  bookModel: state.bookModelsList[index]
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10.0,
                ),
                itemCount: state.bookModelsList.length,
              ),
            ),
          );
        } else if (state is FeaturedBooksFailureState) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const CustomShimmerFeaturedBooksList();
        }
      },
    );
  }
}
