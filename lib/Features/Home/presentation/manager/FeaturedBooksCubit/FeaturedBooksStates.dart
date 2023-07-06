import 'package:bookly/Features/Home/data/models/book_model/book_model/book_model.dart';

class FeaturedBooksStates {}

class FeaturedBooksInitialState extends FeaturedBooksStates {}

class FeaturedBooksLoadingState extends FeaturedBooksStates {}

class FeaturedBooksSuccessState extends FeaturedBooksStates {
  final List<BookModel> bookModelsList;

  FeaturedBooksSuccessState(this.bookModelsList);
}

class FeaturedBooksFailureState extends FeaturedBooksStates {
  final String errMessage;

  FeaturedBooksFailureState(this.errMessage);
}
