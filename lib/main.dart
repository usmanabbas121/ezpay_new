import 'package:ezpay/login_signup_verify/sign_in.dart';
import 'package:ezpay/router.dart';
import 'package:ezpay/starting_screens/gett_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dashboard/dashboard.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final bool isFirstTime = prefs.getBool('isFirstTime') ?? true;
  final bool isSignedIn = prefs.getBool('isSignedIn') ?? false;
  print('isFirstTime=$isFirstTime,  isSignedIn=$isSignedIn');
  
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  runApp(MyApp(isFirstTime, isSignedIn));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final bool isFirstTime;
  final bool isSignedIn;

  MyApp(this.isFirstTime, this.isSignedIn);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EZPAY',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFF233067),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: isFirstTime ? GettingStarted() : (isSignedIn ? Dashboard() : SignIn()),
      onGenerateRoute: generateRoute,
    );
  }
}
