import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Sign_In extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Sign_In> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            'Sign in',
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: "Proxmia",
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w900),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).primaryColor,
              size: 20,
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Container(
                          height: 80,
                          width: 170,
                          child: Image.asset("assets/fizlogo.png")),
                      SizedBox(height: 25,),
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 25),
                        child: Form(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [



                              Text("Email",style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Proxmia",
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(.6),
                                  fontWeight: FontWeight.w500),),
                              TextFormField(
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontFamily: "Proxmia",
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(.9),
                                    fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    isDense: true,
                                    prefixIconConstraints:
                                    BoxConstraints(minHeight: 15),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, bottom: 05, top: 03),
                                      child: Container(
                                          height: 20,
                                          width: 20,
                                          child: SvgPicture.asset("assets/iconnn.svg")),
                                    ),
                                    floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                    hintText: "Enter your Email",
                                    hintStyle: TextStyle(
                                        fontSize: 15.0,
                                        fontFamily: "Proxmia",
                                        color: Theme.of(context)
                                            .primaryColor
                                            .withOpacity(.5),
                                        fontWeight: FontWeight.w100),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Theme.of(context)
                                              .primaryColor
                                              .withOpacity(.2),width: 0.3),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .primaryColor
                                            .withOpacity(.5),
                                      ),
                                    )),
                              ),
                              SizedBox(height: 20,),








                              Text("Password",style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Proxmia",
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(.6),
                                  fontWeight: FontWeight.w500),),
                              TextFormField(
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontFamily: "Proxmia",
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(.9),
                                    fontWeight: FontWeight.bold),
                                obscureText: true,
                                decoration: InputDecoration(
                                    alignLabelWithHint: true,
                                    isDense: true,
                                    prefixIconConstraints:
                                    BoxConstraints(minHeight: 15),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, bottom: 05, top: 03),
                                      child: Container(
                                          height: 20,
                                          width: 20,
                                          child: SvgPicture.asset("assets/icon.svg")),

                                    ),
                                    floatingLabelBehavior:
                                    FloatingLabelBehavior.always,

                                    hintText: "Enter your Password",
                                    hintStyle: TextStyle(
                                        fontSize: 15.0,
                                        fontFamily: "Proxmia",
                                        color: Theme.of(context)
                                            .primaryColor
                                            .withOpacity(.5),
                                        fontWeight: FontWeight.w100),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Theme.of(context)
                                              .primaryColor
                                              .withOpacity(.2),width: 0.3),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Theme.of(context)
                                            .primaryColor
                                            .withOpacity(.5),
                                      ),
                                    )),
                              ),
                              SizedBox(height: 40,),





                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(color: Theme.of(context).primaryColor)),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "dashboard");
                                  },
                                  color: Theme.of(context).primaryColor,
                                  textColor: Colors.white,
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        fontFamily: "Proxmia",
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("or",style: TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: "Proxmia",
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(.3),
                                      fontWeight: FontWeight.w100),),
                                  InkWell(


                                    onTap: (){
                                      Navigator.pop(context, );
                                    },
                                    child: Text(" Register a new account ",style: TextStyle(
                                        fontSize: 15.0,
                                        fontFamily: "Proxmia",
                                        color: Theme.of(context)
                                            .primaryColor
                                            .withOpacity(.9),
                                        fontWeight: FontWeight.w100),),
                                  ),

                                ],
                              ),
                              SizedBox(height: 30,),

                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
