import 'package:flutter/material.dart';
import 'package:flutterpath/old/screens/forgot_password2_screen.dart';
import 'package:flutterpath/old/screens/home2_screen.dart';
import 'package:flutterpath/old/screens/sign_in2_screen.dart';
import 'package:flutterpath/old/screens/sing_up2_screen.dart';
import 'package:flutterpath/presentation/features/cart/cart_screen.dart';
import 'package:flutterpath/presentation/features/complete_profile/complete_profile_screen.dart';
import 'package:flutterpath/presentation/features/forgot_password/forgot_password_screen.dart';
import 'package:flutterpath/presentation/features/profile/profile_screen.dart';
import 'package:flutterpath/presentation/features/home/home_screen.dart';
import 'package:flutterpath/presentation/features/login_success/login_success_screen.dart';
import 'package:flutterpath/presentation/features/otp/otp_screen.dart';
import 'package:flutterpath/presentation/features/product_details/product_details_screen.dart';
import 'package:flutterpath/presentation/features/sign-in/sign_in_screen.dart';
import 'package:flutterpath/presentation/features/sign-up/sign_up_screen.dart';
import 'package:flutterpath/presentation/features/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  // onboarding
  AppRoutes.splash: (context) => SplashScreen(),
  AppRoutes.signUp: (context) => SignUpScreen(),
  AppRoutes.signIn: (context) => SignInScreen(),
  AppRoutes.forgotPassword: (context) => ForgotPasswordScreen(),
  AppRoutes.loginSuccess: (context) => LoginSuccessScreen(),
  AppRoutes.completeProfile: (context) => CompleteProfileScreen(),
  AppRoutes.otp: (context) => OtpScreen(),

  // features
  AppRoutes.home: (context) => HomeScreen(),
  AppRoutes.productDetails: (context) => ProductDetailsScreen(),
  AppRoutes.cart: (context) => CartScreen(),
  AppRoutes.profile: (context) => ProfileScreen(),

  // old
  AppRoutes.signUp2: (context) => SignUp2Screen(),
  AppRoutes.signIn2: (context) => SignIn2Screen(),
  AppRoutes.forgotPassword2: (context) => ForgotPassword2Screen(),
  AppRoutes.home2: (context) => Home2Screen(),
};

class AppRoutes {
  // onboarding
  static const home = 'home';
  static const splash = 'splash';
  static const signUp = 'sign_up';
  static const signIn = 'sign_in';
  static const forgotPassword = 'forgot_pass';
  static const loginSuccess = 'login_success';
  static const completeProfile = 'complete_profile';
  static const otp = 'otp';

  // featues
  static const shop = 'shop';
  static const productList = 'product_list'; // not implemented
  static const product = 'product'; // product details
  static const productDetails = 'product_details';
  static const cart = 'cart';
  static const checkout = 'checkout';
  static const profile = 'profile';

  // extra
  static const favorites = 'favorites';
  static const filters = 'filters';

  // old
  static const signUp2 = 'sign_up2';
  static const signIn2 = 'sign_in2';
  static const forgotPassword2 = 'forgot_pass2';
  static const home2 = 'home2';
}
