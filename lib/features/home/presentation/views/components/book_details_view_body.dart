import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/components/actions_box.dart';
import 'package:bookly/features/home/presentation/views/components/book_details_custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/components/book_rating.dart';
import 'package:bookly/features/home/presentation/views/components/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/components/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const BookDetailsCustomAppBar(),
                const SizedBox(height: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.42,
                  child: CustomBookImage(
                    imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  textAlign: TextAlign.center,
                  bookModel.volumeInfo.title!,
                  style: Styles.textStyle30.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    bookModel.volumeInfo.authors != null &&
                            bookModel.volumeInfo.authors!.isNotEmpty
                        ? bookModel.volumeInfo.authors![0]
                        : 'Unknown Author',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                  rating: bookModel.volumeInfo.averageRating ?? 0,
                  count: bookModel.volumeInfo.ratingsCount ?? 0,
                ),
                const SizedBox(height: 40),
                ActionsBox(
                  bookModel: bookModel,
                ),
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You may also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const SimilarBooksListView(),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
