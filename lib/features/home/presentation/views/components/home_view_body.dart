import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/components/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/components/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(height: 20),
          FeaturedBooksListView(),
          SizedBox(height: 30),
          Text(
            'Best Seller',
            style: Styles.titleMedium,
          )
        ],
      ),
    );
  }
}
