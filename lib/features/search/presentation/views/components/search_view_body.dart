import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/components/book_details_custom_app_bar.dart';
import 'package:bookly/features/search/presentation/views/components/custom_search_text_field.dart';
import 'package:bookly/features/search/presentation/views/components/search_results_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const BookDetailsCustomAppBar(),
                const SizedBox(height: 10),
                const CustomSearchTextField(),
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Search Result',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
          const SearchResultsListView(),
        ],
      ),
    );
  }
}
