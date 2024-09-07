import 'package:bookly/core/components/custom_loading_indicator.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/components/book_list_view_item.dart';
import 'package:bookly/features/search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.booksList.length,
              (context, index) => BookListViewItem(
                bookModel: state.booksList[index],
              ),
            ),
          );
        } else if (state is SearchBooksFailure) {
          return SliverFillRemaining(
            child: Center(
              child: Text(
                'There are no matching books, Please search again.',
                textAlign: TextAlign.center,
                style: Styles.textStyle20.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        } else if (state is SearchBooksLoading) {
          return const SliverFillRemaining(
            child: CustomLoadingIndicator(),
          );
        } else {
          return SliverFillRemaining(
            child: Center(
              child: Text(
                'Start Searching for Books.',
                textAlign: TextAlign.center,
                style: Styles.textStyle20.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
