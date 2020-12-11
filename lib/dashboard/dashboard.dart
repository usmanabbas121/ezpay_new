import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset("assets/iconnn.svg"),
          )
        ],
      )
    );
  }
}
