import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_app/Core/utils/Styls.dart';
import 'package:meal_app/Core/utils/app_router.dart';
import 'package:meal_app/Features/Splash_Screen/presentation/views/widget/sliding_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }
  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
          children: [
        const Image(
          width: double.infinity,
          fit: BoxFit.fill,
          image: AssetImage('assets/images/SplashBackGround.jpeg'),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/Monkey face.png'),
            ),
            const SizedBox(height: 14.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Meal',
                  style: Styles.textStyle34,
                ),
                Text(
                  'Monkey',
                  style: Styles.texttextStyle34,
                ),
              ],
            ),
            const SizedBox(height: 6,),
            SlidingText(slidingAnimation: slidingAnimation),
          ],
        ),
      ]
      ),
    );
  }
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
          () {
        GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }
}
