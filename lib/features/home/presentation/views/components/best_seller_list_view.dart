import 'package:bookly/features/home/presentation/views/components/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 5,
        (context, index) => const BestSellerListViewItem(),
      ),
    );
  }
}
