import 'package:bookly/features/home/presentation/views/components/book_details_custom_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          BookDetailsCustomAppBar(),
        ],
      ),
    );
  }
}
