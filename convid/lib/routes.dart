import 'package:flutter/widgets.dart';
import 'package:convid/screens/cart/cart_screen.dart';
import 'package:convid/screens/complete_profile/complete_profile_screen.dart';
import 'package:convid/screens/details/details_screen.dart';
import 'package:convid/screens/forgot_password/forgot_password_screen.dart';
import 'package:convid/screens/home/home_screen.dart';
import 'package:convid/screens/login_success/login_success_screen.dart';
import 'package:convid/screens/otp/otp_screen.dart';
import 'package:convid/screens/profile/profile_screen.dart';
import 'package:convid/screens/sign_in/sign_in_screen.dart';
import 'package:convid/screens/splash/splash_screen.dart';
import 'package:convid/screens/section/section.dart';
import 'package:convid/screens/kidssection/kidssection.dart';
import 'package:convid/screens/jewellrysection/jewellrysection.dart';
import 'package:convid/screens/womensection/womensection.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  JewellrySectionScreen.routeName: (context) =>JewellrySectionScreen (),
  SectionScreen.routeName:(context)=> SectionScreen(),
  KidsSectionScreen.routeName:(context)=> KidsSectionScreen(),
  WomenSectionScreen.routeName:(context)=> WomenSectionScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
