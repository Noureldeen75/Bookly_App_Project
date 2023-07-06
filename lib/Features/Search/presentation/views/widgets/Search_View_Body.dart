import 'package:bookly/Features/Search/presentation/manager/SearchBooksCubit/SearchBooksCubit.dart';
import 'package:bookly/Features/Search/presentation/manager/SearchBooksCubit/SearchBooksStates.dart';
import 'package:bookly/Features/Search/presentation/views/widgets/Custom_No_Search_Found.dart';
import 'package:bookly/Features/Search/presentation/views/widgets/Custom_Search_Result_List.dart';
import 'package:bookly/Features/Search/presentation/views/widgets/Custom_Search_TextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksStates>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            children: [
              const CustomSearchTextField(),
              const SizedBox(height: 20.0,),
              if (SearchBooksCubit.get(context).isResultFound == false)
                const Expanded(
                  child: CustomScrollView(
                    physics: BouncingScrollPhysics(),
                    slivers: [
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: CustomNoSearchFound(),
                      ),
                    ],
                  ),
                ),
              if (SearchBooksCubit.get(context).isResultFound != false)
                Expanded(
                  child: CustomScrollView(
                    physics: const BouncingScrollPhysics(),
                    slivers: [
                      CustomSearchResultList(
                        searchBooksStates: state,
                      )
                    ],
                  ),
                )
            ],
          ),
        );
      },
    );
  }
}
