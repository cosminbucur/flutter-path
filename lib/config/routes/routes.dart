import 'package:flutter/material.dart';
import 'package:flutterpath/presentation/features/forgot_password/forgot_password_screen.dart';
import 'package:flutterpath/presentation/features/home/home_screen.dart';
import 'package:flutterpath/presentation/features/login/login_screen.dart';
import 'package:flutterpath/presentation/features/register/register_screen.dart';
import 'package:flutterpath/presentation/features/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  AppRoutes.home: (context) => HomeScreen(),
  AppRoutes.splash: (context) => SplashScreen(),
  AppRoutes.signup: (context) => RegisterScreen(),
  AppRoutes.signin: (context) => LoginScreen(),
  AppRoutes.forgotPassword: (context) => ForgotPasswordScreen(),
};

class AppRoutes {
  static const home = '/';
  static const splash = 'splash';
  static const signup = 'signup';
  static const signin = 'signin';
  static const forgotPassword = 'forgot_pass';

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
