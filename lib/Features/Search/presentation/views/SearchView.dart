import 'package:bookly/Features/Home/data/home_repos/home_repos_impl.dart';
import 'package:bookly/Features/Search/presentation/manager/SearchBooksCubit/SearchBooksCubit.dart';
import 'package:bookly/Features/Search/presentation/views/widgets/Search_View_Body.dart';
import 'package:bookly/core/Utils/Get_It.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBooksCubit(getIt.get<HomeRepoImpl>()),
      child: const SafeArea(
        child: Scaffold(
          body: SearchViewBody(),
        ),
      ),
    );
  }
}
