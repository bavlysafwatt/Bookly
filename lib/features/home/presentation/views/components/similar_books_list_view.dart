import 'package:bookly/features/home/presentation/views/components/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.175,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(
          imageUrl:
              'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.eg%2F-%2Fen%2FClean-Code-Handbook-Software-Craftsmanship%2Fdp%2F0132350882&psig=AOvVaw1STKnO5qgMYWMqwCmcx2U1&ust=1725705456738000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCKjW3PeProgDFQAAAAAdAAAAABAE',
        ),
      ),
    );
  }
}
