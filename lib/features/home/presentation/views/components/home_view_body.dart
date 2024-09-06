import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/components/book_list_view.dart';
import 'package:bookly/features/home/presentation/views/components/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/components/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26.0),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(height: 20),
                const FeaturedBooksListView(),
                const SizedBox(height: 30),
                Text(
                  'Newest Books',
                  style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: BookListView()),
        ],
      ),
    );
  }
}
