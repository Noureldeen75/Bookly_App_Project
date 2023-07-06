import 'package:bookly/Features/Home/data/home_repos/home_repo.dart';
import 'package:bookly/Features/Search/presentation/manager/SearchBooksCubit/SearchBooksStates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBooksCubit extends Cubit<SearchBooksStates> {
  SearchBooksCubit(this.homeRepo) : super(SearchBooksInitialState());
  static SearchBooksCubit get(context) => BlocProvider.of(context);

  bool isResultFound = false;
  TextEditingController searchController = TextEditingController();
  HomeRepo homeRepo;
  Future<void> getBooks() async {
    emit(SearchBooksLoadingState());
    await homeRepo
        .fetchSearchBooks(search: searchController.text)
        .then((value) {
      value.fold((failure) {
        emit(SearchBooksFailureState(failure.errMessage));
      }, (booksList) {
        emit(SearchBooksSuccessState(booksList));
      });
    });
  }

  void changeIsResultFound() {
    isResultFound = true;
    emit(SearchChangeIsResultFoundState());
  }
}
