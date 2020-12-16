import 'package:ezpay/dashboard/profile.dart';
import 'package:ezpay/router.dart';
import 'package:ezpay/starting_screens/gett_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dashboard/dashboard.dart';
import 'dashboard/spendings.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
      home: Dashboard(),
      onGenerateRoute: generateRoute,

    );
  }
}


