import 'package:ezpay/dashboard/dashboard.dart';
import 'package:ezpay/dashboard/sign_in.dart';
import 'package:ezpay/dashboard/spendings.dart';
import 'package:ezpay/login_signup_verify/sign_in.dart';
import 'package:ezpay/login_signup_verify/signup.dart';
import 'package:ezpay/starting_screens/gett_started.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  var signuparg=settings.arguments;
  switch (settings.name) {
    case 'gettingstarted':
      return MaterialPageRoute(builder: (context) => Getting_Started());
    case 'signin':
      return MaterialPageRoute(builder: (context) => Sign_In());
    case 'signup':
      return MaterialPageRoute(builder: (context) => Signup());
    case 'dashboard':
      return MaterialPageRoute(builder: (context) => Dashboard());
    case 'send':
      return MaterialPageRoute(builder: (context) => Send_Money());
    case 'spendings':
      return MaterialPageRoute(builder: (context) => Spendings());
  }
}
