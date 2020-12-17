import 'package:ezpay/login_signup_verify/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GettingStarted extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<GettingStarted> {
  final introKey = GlobalKey<IntroductionScreenState>();

  Future<Null> saveLocalData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isFirstTime', false);
  }

  void _onIntroEnd(context) {
    saveLocalData();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => SignIn()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Container(
        height: 250,
          width: 250,
          child: SvgPicture.asset(assetName)),
      alignment: Alignment.bottomCenter,
    );
  }
  Widget titlebuilder(String text) {
    return  Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Text(text,style: TextStyle(
          fontFamily: "Gilroy",
          color: Color(0xFF233067),
          fontStyle: FontStyle.normal,
          fontSize: 28.0, fontWeight: FontWeight.w700),),
    );
  }

  @override
  Widget build(BuildContext context) {

    const bodyStyle = TextStyle(fontSize: 15.0,
    fontFamily: "Proxmia",
      color: Color(0xFF233067),
    );
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontFamily: "Gilroy",
          color: Color(0xFF233067),
          fontStyle: FontStyle.normal,
          fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
         titleWidget: titlebuilder("Secure Your Money"),
          body:
          "Add your credit card, bank details here to transaction. Don’t worry about it its fully secure.",
          image: _buildImage("assets/slide1.svg"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          titleWidget: titlebuilder("Manage Everything"),
          body:
          "You can manage each and everything from here. Get rewards, voucher and many more functionalities you can use.",
           image: _buildImage("assets/slide2.svg"),
          decoration: pageDecoration,
        ),


        PageViewModel(
          titleWidget: titlebuilder("Safe Transaction"),
          body:
          "Transfer money account to account. Don’t share this id anywhere. Only you can manage your transaction. ",

          image: _buildImage("assets/slide3.svg"),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}