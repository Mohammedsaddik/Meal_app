import 'package:flutter/material.dart';
import 'package:meal_app/Core/componnent/CustomText_field.dart';
import 'package:meal_app/Core/componnent/default_button.dart';
import 'package:meal_app/Core/utils/Styls.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 60.0,
            ),
            const Text(
              'New Password',
              style: Styles.textStyle30,
            ),
            const SizedBox(
              height: 12.0,
            ),
            const Text(
              'Please enter your email to receive a',
              style: Styles.textStyle14,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'link to  create a new password via email',
              style: Styles.textStyle14,
            ),
            const SizedBox(
              height: 36.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTextField(
                prefixIcon: Icons.lock,
                radius: 25.0,
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value!.length < 6) {
                    return '         Password is to short must be 6 digit or more';
                  }
                  return null;
                },
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 28.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTextField(
                prefixIcon: Icons.lock,
                radius: 25.0,
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value!.length < 6) {
                    return '         Wrong password';
                  }
                  return null;
                },
                hintText: 'Confirm Password',
              ),
            ),
            const SizedBox(
              height: 28.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: DefaultButton(
                onPressed: () {},
                color: Colors.deepOrange,
                width: double.infinity,
                height: 60.0,
                borderRadius: 30,
                buttonText: 'Next',
                fontSize: 17.0,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
