import 'package:flutter/cupertino.dart';
import 'package:meal_app/Core/utils/Styls.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({Key? key, required this.slidingAnimation}) : super(key: key);
  final Animation<Offset> slidingAnimation;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Food Delivery',
              style: Styles.textStyle16,
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
