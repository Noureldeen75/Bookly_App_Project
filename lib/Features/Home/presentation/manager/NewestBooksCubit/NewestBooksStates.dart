import 'package:bookly/Features/Home/data/models/book_model/book_model/book_model.dart';

class NewestBooksStates {}

class NewestBooksInitialState extends NewestBooksStates {}

class NewestBooksLoadingState extends NewestBooksStates {}

class NewestBooksSuccessState extends NewestBooksStates {
  final List<BookModel> bookModelsList;

  NewestBooksSuccessState(this.bookModelsList);
}

class NewestBooksFailureState extends NewestBooksStates {
  final String errMessage;

  NewestBooksFailureState(this.errMessage);
}
