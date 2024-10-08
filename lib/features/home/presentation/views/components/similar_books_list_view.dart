import 'package:bookly/core/components/custom_error_message.dart';
import 'package:bookly/core/components/custom_loading_indicator.dart';
import 'package:bookly/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/components/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.175,
            child: ListView.builder(
              itemCount: state.booksList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => GoRouter.of(context).push(
                  '/bookDetails',
                  extra: state.booksList[index],
                ),
                child: CustomBookImage(
                  imageUrl:
                      state.booksList[index].volumeInfo.imageLinks?.thumbnail,
                ),
              ),
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
