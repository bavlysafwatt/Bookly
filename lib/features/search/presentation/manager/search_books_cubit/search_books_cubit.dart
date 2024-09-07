// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchedBooks({required String key}) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchSearchedBooks(key: key);
    result.fold(
      (failure) => emit(SearchBooksFailure(errorMessage: failure.errorMessage)),
      (booksList) => emit(SearchBooksSuccess(booksList: booksList)),
    );
  }
}
