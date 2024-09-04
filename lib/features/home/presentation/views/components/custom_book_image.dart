import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: AspectRatio(
        aspectRatio: 0.63,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: const DecorationImage(
              image: AssetImage('assets/images/test_image.png'),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
