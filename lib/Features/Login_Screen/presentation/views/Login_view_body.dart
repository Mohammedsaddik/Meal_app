import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_app/Core/componnent/CustomText_field.dart';
import 'package:meal_app/Core/componnent/default_button.dart';
import 'package:meal_app/Core/componnent/sharedPreferences.dart';
import 'package:meal_app/Core/utils/Styls.dart';
import 'package:meal_app/Core/utils/app_router.dart';
import 'package:meal_app/Features/Home_Layout/presentation/views/home_layout.dart';
import 'package:meal_app/Features/Login_Screen/cubit/login_cubit.dart';
import 'package:meal_app/Features/Login_Screen/presentation/views/widget/snack_par.dart';
import 'package:meal_app/Features/OnBoarding_Screen/presentation/views/onBoarding_view_Body.dart';
class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            CacheHelper.putData(key: 'uId', value: state.uId);
            print('>>>>>>>>  ${state.uId}');
            late Widget widget;
            if (CacheHelper.getData(key: 'isOnBoarding') == null) {
              widget = OnBoardingViewBody();
            } else
              widget = HomeLayout();
            navigateTo(context, widget);
          }
        },
        builder: (context, state) {
          return Scaffold(
              body: SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60.0,
                    ),
                    const Text(
                      'Login',
                      style: Styles.textStyle30,
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    const Text(
                      'Add your details to login',
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(
                      height: 36.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: CustomTextField(
                        controller: emailController,
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
                      height: 28.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: CustomTextField(
                        controller: passwordController,
                        prefixIcon: Icons.lock,
                        radius: 25.0,
                        keyboardType: TextInputType.emailAddress,
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
                      child: DefaultButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            BlocProvider.of<LoginCubit>(context).UserLogin(
                              email: emailController.text,
                              password: passwordController.text,
                            );
                          } else {
                            ShowSnackBar(context, 'Please fill in all fields.');
                          }
                        },
                        color: Colors.deepOrange,
                        width: double.infinity,
                        height: 60.0,
                        borderRadius: 30,
                        buttonText: 'Login',
                        fontSize: 17.0,
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kResetPasswordViewBody);
                      },
                      child: const Text(
                        'Forgot your password?',
                        style: Styles.textStyle14,
                      ),
                    ),
                    const SizedBox(
                      height: 49.0,
                    ),
                    const Text(
                      'or Login With',
                      style: Styles.textStyle14,
                    ),
                    const SizedBox(
                      height: 27.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: DefaultButton(
                        onPressed: () {},
                        buttonText: 'Login with Facebook',
                        color: const Color(0xFF367FC0),
                        width: double.infinity,
                        height: 60.0,
                        borderRadius: 30,
                        borderColor: const Color(0xFF367FC0),
                        fontSize: 12.0,
                        icon: Icons.facebook,
                      ),
                    ),
                    const SizedBox(
                      height: 28.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: DefaultButton(
                        onPressed: () {},
                        buttonText: 'Login with Google',
                        color: const Color(0xFFDD4B39),
                        width: double.infinity,
                        height: 60.0,
                        borderRadius: 30,
                        borderColor: const Color(0xFFDD4B39),
                        fontSize: 12.0,
                        icon: Icons.g_mobiledata_outlined,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an Account?',
                          style: Styles.textStyle14,
                        ),
                        TextButton(
                          onPressed: () {
                            GoRouter.of(context).push(AppRouter.kregisterView);
                          },
                          child: const Text(
                            'Sign Up',
                            style: Styles.texttextStyle14,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ));
        },
      ),
    );
  }

}
