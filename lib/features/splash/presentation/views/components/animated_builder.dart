import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatelessWidget {
  const AnimatedBuilderWidget({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, widget) => SlideTransition(
        position: slidingAnimation,
        child: const Text(
          'Read free books!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
