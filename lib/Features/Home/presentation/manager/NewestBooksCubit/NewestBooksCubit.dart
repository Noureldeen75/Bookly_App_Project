import 'package:bookly/Features/Home/data/home_repos/home_repo.dart';
import 'package:bookly/Features/Home/presentation/manager/NewestBooksCubit/NewestBooksStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitialState());
  static NewestBooksCubit get(context) => BlocProvider.of(context);

  HomeRepo homeRepo;
  Future<void> getBooks() async {
    emit(NewestBooksLoadingState());
    await homeRepo.fetchNewestBooks().then((value) {
      value.fold((failure) {
        emit(NewestBooksFailureState(failure.errMessage));
      }, (booksList) {
        emit(NewestBooksSuccessState(booksList));
      });
    });
  }
}
