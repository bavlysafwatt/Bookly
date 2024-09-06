import 'package:bookly/core/components/custom_error_message.dart';
import 'package:bookly/core/components/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/components/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.booksList.length,
            itemBuilder: (context, index) => BookListViewItem(
              bookModel: state.booksList[index],
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const Expanded(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
