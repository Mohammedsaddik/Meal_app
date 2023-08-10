import 'package:flutter/material.dart';
import 'package:meal_app/Core/utils/Styls.dart';

class MoreViewBody extends StatelessWidget {
  const MoreViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'MoreViewBody',
          style: Styles.textStyle37,
        ),
      ),
    );
  }
}
