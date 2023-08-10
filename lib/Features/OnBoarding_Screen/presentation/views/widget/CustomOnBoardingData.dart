import 'package:flutter/cupertino.dart';
import 'package:meal_app/Core/utils/Styls.dart';
import 'OnBoarding_Model.dart';

Widget CustomOnBoardingData(OnboardingModel model) =>
    Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        Image(
          image: AssetImage(model.image),
          height: 300.0,
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          model.title,
          style: Styles.textStyle25,
        ),
        const SizedBox(
          height: 33,
        ),
        Text(
          model.head1,
          style: Styles.textStyle12,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          model.head2,
          style: Styles.textStyle12,
        ),
      ],
    );
