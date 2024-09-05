import 'package:bookly/features/home/presentation/views/components/book_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 7,
        (context, index) => const BookListViewItem(),
      ),
    );
  }
}
