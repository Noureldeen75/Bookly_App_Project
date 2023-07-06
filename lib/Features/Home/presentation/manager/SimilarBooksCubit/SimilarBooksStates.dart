import 'package:bookly/Features/Home/data/models/book_model/book_model/book_model.dart';

class SimilarBooksStates {}

class SimilarBooksInitialState extends SimilarBooksStates {}

class SimilarBooksLoadingState extends SimilarBooksStates {}

class SimilarBooksSuccessState extends SimilarBooksStates {
  final List<BookModel> bookModelsList;

  SimilarBooksSuccessState(this.bookModelsList);
}

class SimilarBooksFailureState extends SimilarBooksStates {
  final String errMessage;

  SimilarBooksFailureState(this.errMessage);
}
