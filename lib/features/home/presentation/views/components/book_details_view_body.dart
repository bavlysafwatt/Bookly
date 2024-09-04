import 'package:bookly/features/home/presentation/views/components/book_details_custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/components/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const BookDetailsCustomAppBar(),
          const SizedBox(height: 30),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: const CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
