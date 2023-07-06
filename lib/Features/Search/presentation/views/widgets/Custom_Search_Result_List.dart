import 'package:bookly/Features/Home/presentation/views/widgets/NewestBooks_List_Item.dart';
import 'package:bookly/Features/Search/presentation/manager/SearchBooksCubit/SearchBooksStates.dart';
import 'package:bookly/core/widgets/Custom_Error.dart';
import 'package:bookly/core/widgets/Customs_Shimmer/Custom_Shimmer_Small_Books.dart';
import 'package:flutter/material.dart';

class CustomSearchResultList extends StatelessWidget {
  const CustomSearchResultList({super.key, required this.searchBooksStates});

  final dynamic searchBooksStates;
  @override
  Widget build(BuildContext context) {
        if (searchBooksStates is SearchBooksSuccessState) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) =>
                  NewestBooksListItem(bookModel: searchBooksStates.bookModelsList[index]),
              childCount: searchBooksStates.bookModelsList.length,
            ),
          );
        } else if (searchBooksStates is SearchBooksFailureState) {
          return SliverToBoxAdapter(
            child: CustomError(
              errMessage: searchBooksStates.errMessage,
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
      }
  }

