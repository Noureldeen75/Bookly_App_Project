import 'package:bookly/Features/Home/data/home_repos/home_repo.dart';
import 'package:bookly/Features/Home/data/models/book_model/book_model/book_model.dart';
import 'package:bookly/core/Utils/Api_Services.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      Map<String, dynamic> data = await apiServices.getData(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> bookModelsList = [];
      List<dynamic> dataList = data['items'];
      dataList.forEach((element) {
        bookModelsList.add(BookModel.fromJson(element));
      });
      return right(bookModelsList);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> data = await apiServices.getData(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming');
      List<BookModel> bookModelsList = [];
      List<dynamic> dataList = data['items'];
      dataList.forEach((element) {
        bookModelsList.add(BookModel.fromJson(element));
      });
      return right(bookModelsList);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks() async {
    try {
      Map<String, dynamic> data = await apiServices.getData(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:Programming');
      List<BookModel> bookModelsList = [];
      List<dynamic> dataList = data['items'];
      dataList.forEach((element) {
        bookModelsList.add(BookModel.fromJson(element));
      });
      return right(bookModelsList);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String search}) async {
    try {
      Map<String, dynamic> data = await apiServices.getData(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:$search');
      List<BookModel> bookModelsList = [];
      List<dynamic> dataList = data['items'];
      dataList.forEach((element) {
        bookModelsList.add(BookModel.fromJson(element));
      });
      return right(bookModelsList);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
