import 'package:bookly/Features/Home/data/models/book_model/book_model/book_model.dart';

class SearchBooksStates {}

class SearchBooksInitialState extends SearchBooksStates {}

class SearchBooksLoadingState extends SearchBooksStates {}

class SearchBooksSuccessState extends SearchBooksStates {
  final List<BookModel> bookModelsList;

  SearchBooksSuccessState(this.bookModelsList);
}

class SearchBooksFailureState extends SearchBooksStates {
  final String errMessage;

  SearchBooksFailureState(this.errMessage);
}

class SearchChangeIsResultFoundState extends SearchBooksStates {}
