import 'package:bookly/Features/Home/data/home_repos/home_repo.dart';
import 'package:bookly/Features/Home/presentation/manager/FeaturedBooksCubit/FeaturedBooksStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());
  static FeaturedBooksCubit get(context) => BlocProvider.of(context);

  HomeRepo homeRepo;
  Future<void> getBooks() async {
    emit(FeaturedBooksLoadingState());
    await homeRepo.fetchFeaturedBooks().then((value) {
      value.fold((failure) {
        emit(FeaturedBooksFailureState(failure.errMessage));
      }, (booksList) {
        emit(FeaturedBooksSuccessState(booksList));
      });
    });
  }
}
