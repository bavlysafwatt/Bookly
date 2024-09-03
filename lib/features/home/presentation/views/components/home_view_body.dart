import 'package:bookly/features/home/presentation/views/components/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/components/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.0),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 20),
          CustomListViewItem(),
        ],
      ),
    );
  }
}
