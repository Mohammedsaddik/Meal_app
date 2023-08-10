import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_app/Core/componnent/CustomText_field.dart';
import 'package:meal_app/Core/componnent/default_button.dart';
import 'package:meal_app/Core/utils/Styls.dart';
import 'package:meal_app/Core/utils/app_router.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 60.0,
              ),
              const Text(
                'Reset Password',
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

                  prefixIcon: Icons.email,
                  radius: 25.0,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return '         Email must not be empty';
                    }
                    return null;
                  },
                  hintText: 'Your Email',
                ),
              ),
              const SizedBox(
                height: 34.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: DefaultButton(
                  onPressed: ()
                  {
                    GoRouter.of(context).push(AppRouter.kResetCodeViewBody);
                  },
                  color: Colors.deepOrange,
                  width: double.infinity,
                  height: 60.0,
                  borderRadius: 30,
                  buttonText: 'Send',
                  fontSize: 17.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
