import 'package:flutter/material.dart';
import 'package:meal_app/Core/componnent/default_button.dart';
import 'package:meal_app/Core/utils/app_router.dart';
import 'package:meal_app/Features/Home_Layout/presentation/views/home_layout.dart';
import 'package:meal_app/Features/OnBoarding_Screen/presentation/views/widget/CustomOnBoardingData.dart';
import 'package:meal_app/Features/OnBoarding_Screen/presentation/views/widget/OnBoarding_Model.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    CustomOnBoardingData(onboardingScreens[index]),
                itemCount: onboardingScreens.length,
              ),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onboardingScreens.length,
                        (index) => ContainerListGenerate(index, context),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: DefaultButton(
                onPressed: () {
                  if (currentIndex == onboardingScreens.length - 1)
                  {
                    navigateTo(context, const HomeLayout());
                  }
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                color: Colors.deepOrange,
                width: double.infinity,
                height: 60.0,
                borderRadius: 30,
                buttonText: currentIndex == onboardingScreens.length - 1
                    ? 'Continue'
                    : 'Next',
                fontSize: 17.0,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }

  Container ContainerListGenerate(int index, BuildContext context) {
    return Container(
      height: 10.0,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.deepOrange
      ),
    );
  }
}

