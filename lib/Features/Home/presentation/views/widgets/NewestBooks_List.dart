import 'package:bookly/Features/Home/presentation/manager/NewestBooksCubit/NewestBooksCubit.dart';
import 'package:bookly/Features/Home/presentation/manager/NewestBooksCubit/NewestBooksStates.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/NewestBooks_List_Item.dart';
import 'package:bookly/core/widgets/Custom_Error.dart';
import 'package:bookly/core/widgets/Customs_Shimmer/Custom_Shimmer_Small_Books.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksList extends StatelessWidget {
  const NewestBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksStates>(
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) =>
                  NewestBooksListItem(bookModel: state.bookModelsList[index]),
              childCount: state.bookModelsList.length,
            ),
          );
        } else if (state is NewestBooksFailureState) {
          return SliverToBoxAdapter(
            child: CustomError(
              errMessage: state.errMessage,
            ),
          );
        } else {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const CustomShimmerSmallBooks(),
              childCount: 10,
            ),
          );
        }
      },
    );
  }
}
