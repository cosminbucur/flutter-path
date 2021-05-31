import 'package:flutter/material.dart';
import 'package:flutterpath/presentation/features/complete_profile/complete_profile_screen.dart';
import 'package:flutterpath/presentation/features/forgot_password/forgot_password2_screen.dart';
import 'package:flutterpath/presentation/features/forgot_password/forgot_password_screen.dart';
import 'package:flutterpath/presentation/features/home/home_screen.dart';
import 'package:flutterpath/presentation/features/login_success/login_success_screen.dart';
import 'package:flutterpath/presentation/features/sign-in/sign_in_screen.dart';
import 'package:flutterpath/presentation/features/sign-in/sign_in_screen2.dart';
import 'package:flutterpath/presentation/features/sign-up/sign_up2_screen.dart';
import 'package:flutterpath/presentation/features/sign-up/sing_up_screen.dart';
import 'package:flutterpath/presentation/features/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  AppRoutes.home: (context) => HomeScreen(),
  AppRoutes.splash: (context) => SplashScreen(),
  AppRoutes.signUp: (context) => SignUpScreen(),
  AppRoutes.signUp2: (context) => SignUp2Screen(),
  AppRoutes.signIn: (context) => SignInScreen(),
  AppRoutes.sigIn2: (context) => SignIn2Screen(),
  AppRoutes.forgotPassword: (context) => ForgotPasswordScreen(),
  AppRoutes.forgotPassword2: (context) => ForgotPassword2Screen(),
  AppRoutes.loginSuccess: (context) => LoginSuccessScreen(),
  AppRoutes.completeProfile: (context) => CompleteProfileScreen(),
};

class AppRoutes {
  static const home = '/';
  static const splash = 'splash';
  static const signUp = 'sign_up';
  static const signUp2 = 'sign_up2';
  static const signIn = 'sign_in';
  static const sigIn2 = 'sign_in2';
  static const forgotPassword = 'forgot_pass';
  static const forgotPassword2 = 'forgot_pass2';
  static const loginSuccess = 'login_success';
  static const completeProfile = 'complete_profile';

  // featues
  static const shop = 'shop';
  static const productList = 'productList';
  static const product = 'product';
  static const cart = 'cart';
  static const checkout = 'checkout';
  static const profile = 'profile';

  // extra
  static const favorites = 'favorites';
  static const filters = 'filters';
}
