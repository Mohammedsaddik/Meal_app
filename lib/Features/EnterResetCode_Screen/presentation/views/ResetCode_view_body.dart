import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_app/Core/componnent/Custom_otp.dart';
import 'package:meal_app/Core/componnent/default_button.dart';
import 'package:meal_app/Core/utils/Styls.dart';
import 'package:meal_app/Core/utils/app_router.dart';
import 'package:meal_app/Features/NewPassword_Screen/presentation/views/NewPassword_view_body.dart';

class ResetCodeViewBody extends StatelessWidget {
  const ResetCodeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 60.0,
                ),
                const Text(
                  'We have sent an OTP to your Mobile',
                  style: Styles.textStyle23,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Please check your mobile number 010*****07',
                  style: Styles.textStyle12,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                const Text(
                  'continue to reset your password',
                  style: Styles.textStyle12,
                ),
                const SizedBox(
                  height: 54.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomOtp(
                      width: 60.0,
                      height: 60.0,
                      color: const Color(0xFFF2F2F2),
                      borderRadius: 10,
                      child: Stack(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 18, left: 20),
                            child: Text(
                              '*',
                              style: Styles.textStyle37,
                            ),
                          ),
                          TextField(decoration: InputDecoration(border: InputBorder.none)),
                        ],
                      ),
                    ),
                    CustomOtp(
                      width: 60.0,
                      height: 60.0,
                      color: const Color(0xFFF2F2F2),
                      borderRadius: 10,
                      child: Stack(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 18, left: 20),
                            child: Text(
                              '*',
                              style: Styles.textStyle37,
                            ),
                          ),
                          TextField(decoration: InputDecoration(border: InputBorder.none)),
                        ],
                      ),
                    ),
                    CustomOtp(
                      width: 60.0,
                      height: 60.0,
                      color: const Color(0xFFF2F2F2),
                      borderRadius: 10,
                      child: Stack(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 18, left: 20),
                            child: Text(
                              '*',
                              style: Styles.textStyle37,
                            ),
                          ),
                          TextField(decoration: InputDecoration(border: InputBorder.none)),
                        ],
                      ),
                    ),
                    CustomOtp(
                      width: 60.0,
                      height: 60.0,
                      color: const Color(0xFFF2F2F2),
                      borderRadius: 10,
                      child: Stack(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 18, left: 20),
                            child: Text(
                              '*',
                              style: Styles.textStyle37,
                            ),
                          ),
                          TextField(decoration: InputDecoration(border: InputBorder.none)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36.0,
                ),
                DefaultButton(
                  onPressed: ()
                  {
                    navigateTo(context, const NewPasswordViewBody());
                  },
                  color: Colors.deepOrange,
                  width: double.infinity,
                  height: 60.0,
                  borderRadius: 30,
                  buttonText: 'Next',
                  fontSize: 17.0,
                ),
                const SizedBox(
                  height: 32.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Didn\'t Recieve? ',
                      style: Styles.textStyle14,
                    ),
                    TextButton(
                      onPressed: ()
                      {
                        // GoRouter.of(context).push(AppRouter.kResetPasswordViewBody);
                      },
                      child: const Text(
                        'Click Here',
                        style: Styles.texttextStyle14,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

