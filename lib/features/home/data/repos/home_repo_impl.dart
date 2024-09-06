import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint:
              'volumes?q=programming&Filtering=free-ebooks&Sorting=newest');
      List<BookModel> booksList = [];
      for (var item in data['items']) {
        booksList.add(BookModel.fromJsonData(item));
      }
      return right(booksList);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint: 'volumes?q=code&Filtering=free-ebooks');
      List<BookModel> booksList = [];
      for (var item in data['items']) {
        booksList.add(BookModel.fromJsonData(item));
      }
      return right(booksList);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      Map<String, dynamic> data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance&q=programming');
      List<BookModel> booksList = [];
      for (var item in data['items']) {
        booksList.add(BookModel.fromJsonData(item));
      }
      return right(booksList);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}
