
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meal_app/Features/EnterResetCode_Screen/presentation/views/ResetCode_view_body.dart';
import 'package:meal_app/Features/Entry_Screen/presentation/views/Entry_view.dart';
import 'package:meal_app/Features/Login_Screen/presentation/views/Login_view_body.dart';
import 'package:meal_app/Features/Register_Screen/presentation/views/register_view_body.dart';
import 'package:meal_app/Features/ResetPassword_Screen/presentation/views/resetPassword_view_body.dart';
import 'package:meal_app/Features/Splash_Screen/presentation/views/splash_view_body.dart';

abstract class AppRouter {
  static const kHomeView = '/entryView';
  static const kloginView = '/loginView';
  static const kregisterView = '/registerView';
  static const kResetPasswordViewBody = '/ResetPasswordViewBody';
  static const kResetCodeViewBody = '/ResetCodeViewBody';
  static final router = GoRouter(
    routes:
    [
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const EntryView(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kloginView,
        builder: (context, state) => const LoginViewBody(),
      ),
      GoRoute(
        path: kregisterView,
        builder: (context, state) => const RegisterViewBody(),
      ),
      GoRoute(
        path: kResetPasswordViewBody,
        builder: (context, state) => const ResetPasswordViewBody(),
      ),
      GoRoute(
        path: kResetCodeViewBody,
        builder: (context, state) => const ResetCodeViewBody(),
      ),
    ],
  );
}

void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

void navigateAndFinsh(context, widget) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
      (route) => false,
);
