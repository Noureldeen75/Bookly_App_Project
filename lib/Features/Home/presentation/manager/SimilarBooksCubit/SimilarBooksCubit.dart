import 'package:bookly/Features/Home/data/home_repos/home_repo.dart';
import 'package:bookly/Features/Home/presentation/manager/SimilarBooksCubit/SimilarBooksStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitialState());
  static SimilarBooksCubit get(context) => BlocProvider.of(context);

  HomeRepo homeRepo;
  Future<void> getBooks() async {
    emit(SimilarBooksLoadingState());
    await homeRepo.fetchSimilarBooks().then((value) {
      value.fold((failure) {
        emit(SimilarBooksFailureState(failure.errMessage));
      }, (booksList) {
        emit(SimilarBooksSuccessState(booksList));
      });
    });
  }
}
