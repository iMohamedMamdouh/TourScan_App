import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.animationController,
    required this.slidingAnimation,
    required this.fadeAnimation,
  });

  final AnimationController animationController;
  final Animation<Offset> slidingAnimation;
  final Animation<double> fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: FadeTransition(
            opacity: fadeAnimation,
            child: const Text(
              'TourScan',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
                color: Color(0xff424242),
              ),
            ),
          ),
        );
      },
    );
  }
}
