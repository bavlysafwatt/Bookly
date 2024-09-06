import 'package:flutter/material.dart';

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 7,
        // (context, index) => const BookListViewItem(),
        (context, index) => const Text(''),
      ),
    );
  }
}
