import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_app/Core/componnent/CustomText_field.dart';
import 'package:meal_app/Core/componnent/default_button.dart';
import 'package:meal_app/Core/componnent/sharedPreferences.dart';
import 'package:meal_app/Core/utils/Styls.dart';
import 'package:meal_app/Core/utils/app_router.dart';
import 'package:meal_app/Features/Home_Layout/presentation/views/home_layout.dart';
import 'package:meal_app/Features/Login_Screen/cubit/login_cubit.dart';
import 'package:meal_app/Features/OnBoarding_Screen/presentation/views/onBoarding_view_Body.dart';
import 'package:meal_app/Features/Register_Screen/cubit/register_cubit.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    var addressController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPasswordController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) async {
          if (state is RegisterSuccessState) {
            await CacheHelper.putData(key: 'uId', value: state.uId);
            print('>>>>>>>>  ${state.uId}');
            late Widget widget;
            if (CacheHelper.getData(key: 'isOnBoarding') == null) {
              widget = const OnBoardingViewBody();
            } else {
              widget = const HomeLayout();
            }
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
                        height: 30.0,
                      ),
                      const Text(
                        'Sign Up',
                        style: Styles.textStyle30,
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      const Text(
                        'Add your details to sign up',
                        style: Styles.textStyle14,
                      ),
                      const SizedBox(
                        height: 36.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: CustomTextField(
                          controller: nameController,
                          prefixIcon: Icons.person,
                          radius: 25.0,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return '         Name must not be empty';
                            }
                            return null;
                          },
                          hintText: 'Name',
                        ),
                      ),
                      const SizedBox(
                        height: 28.0,
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
                          hintText: 'Email',
                        ),
                      ),
                      const SizedBox(
                        height: 28.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: CustomTextField(
                          controller: phoneController,
                          prefixIcon: Icons.phone,
                          radius: 25.0,
                          keyboardType: TextInputType.phone,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return '         Mobile must not be empty';
                            }
                            return null;
                          },
                          hintText: 'Mobile No',
                        ),
                      ),
                      const SizedBox(
                        height: 28.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: CustomTextField(
                          controller: addressController,
                          prefixIcon: Icons.location_on,
                          radius: 25.0,
                          keyboardType: TextInputType.streetAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return '         Address must not be empty';
                            }
                            return null;
                          },
                          hintText: 'Address',
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
                          controller: confirmPasswordController,
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
                      Conditional.single(
                        context: context,
                        conditionBuilder: (context)=>state is! LoginLoadingState,
                        widgetBuilder: (BuildContext context)=>Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: DefaultButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                BlocProvider.of<RegisterCubit>(context)
                                    .userRegister(
                                  name: nameController.text,
                                  email: emailController.text,
                                  phone: phoneController.text,
                                  address: addressController.text,
                                  password: passwordController.text,
                                  confermpassword: confirmPasswordController.text,
                                );
                              } else {}
                            },
                            color: Colors.deepOrange,
                            width: double.infinity,
                            height: 60.0,
                            borderRadius: 30,
                            buttonText: 'Sign Up',
                            fontSize: 17.0,
                          ),
                        ),
                        fallbackBuilder: (contex) =>
                            const Center(child: CircularProgressIndicator()),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an Account?',
                            style: Styles.textStyle14,
                          ),
                          TextButton(
                            onPressed: () {
                              GoRouter.of(context).push(AppRouter.kloginView);
                            },
                            child: const Text(
                              'Login',
                              style: Styles.texttextStyle14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
