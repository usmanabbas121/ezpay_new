import 'package:ezpay/dashboard/dashboard.dart';
import 'package:ezpay/dashboard/send_money.dart';
import 'package:ezpay/dashboard/spendings.dart';
import 'package:ezpay/dashboard/wallet.dart';
import 'package:ezpay/login_signup_verify/sign_in.dart';
import 'package:ezpay/login_signup_verify/signup.dart';
import 'package:ezpay/starting_screens/gett_started.dart';
import 'package:flutter/material.dart';

import 'dashboard/add_card.dart';
import 'dashboard/contact_list.dart';
import 'dashboard/to_company.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  var currency=settings.arguments;
  var company_curr=settings.arguments;

  switch (settings.name) {
    case 'gettingstarted':
      return MaterialPageRoute(builder: (context) => GettingStarted());
    case 'signin':
      return MaterialPageRoute(builder: (context) => SignIn());
    case 'signup':
      return MaterialPageRoute(builder: (context) => Signup());
    case 'dashboard':
      return MaterialPageRoute(builder: (context) => Dashboard());
    case 'send':
      return MaterialPageRoute(builder: (context) => Send_Money());
    case 'spendings':
      return MaterialPageRoute(builder: (context) => Spendings());
    case 'wallet':
      return MaterialPageRoute(builder: (context) => Wallet());
    case 'add_card':
      return MaterialPageRoute(builder: (context) => Creditcard());
    case 'tocontact':
      return MaterialPageRoute(builder: (context) => Contactlist(currency));
    case 'tocompany':
      return MaterialPageRoute(builder: (context) => CompanyList(company_curr));
  }
}
