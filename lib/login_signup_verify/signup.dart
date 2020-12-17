import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final _formKey = GlobalKey<FormState>();

  Future<Null> saveLocalData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('isSignedIn', true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            'Register New Account',
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
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Full Name",style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Proxmia",
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(.6),
                                  fontWeight: FontWeight.w500),),
                              TextFormField(
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter Your Full Name';
                                  }
                                },
                                //onSaved: (val) => setState(() => _user.name = val),
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
                                      child:Container(
                                          height: 20,
                                          width: 20,
                                          child: SvgPicture.asset("assets/iconn.svg")),

                                    ),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    hintText: "Enter your Full Name",
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




                              Text("Phone Number",style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Proxmia",
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(.6),
                                  fontWeight: FontWeight.w500),),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter a Phone Number';
                                  }
                                },
                                //onSaved: (val) => setState(() => _user.phoneNumber = val),
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
                                      child:Container(
                                          height: 20,
                                          width: 20,
                                          child: SvgPicture.asset("assets/iconnnn.svg"))
                                    ),
                                    floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                    hintText: "Enter your phone number",
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


                              Text("Email",style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Proxmia",
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(.6),
                                  fontWeight: FontWeight.w500),),
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter an Email Address';
                                  }
                                },
                                //onSaved: (val) => setState(() => _user.email = val),
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
                                obscureText: true,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter Password';
                                  }
                                },
                                //onSaved: (val) => setState(() => _user.password = val),
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
                              SizedBox(height: 20,),




                              Text("Confirm Password",style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Proxmia",
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(.6),
                                  fontWeight: FontWeight.w500),),
                              TextFormField(
                                obscureText: true,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please Re-enter Password';
                                  }
                                },
                                //onSaved: (val) => setState(() => _user.password = val),
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
                                          child: SvgPicture.asset("assets/icon.svg")),

                                    ),
                                    floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                    hintText: "Re-Enter your Password",
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
                              SizedBox(height: 35,),

                              Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(color: Theme.of(context).primaryColor)),
                                  onPressed: () {
                                    final form = _formKey.currentState;
                                    if (form.validate()) {
                                      form.save();
                                      Navigator.pop(context, "signin");
                                      Navigator.pushReplacementNamed(context, "dashboard");
                                      //saveLocalData(); //TODO: un-comment on release version
                                    }
                                  },
                                  color: Theme.of(context).primaryColor,
                                  textColor: Colors.white,
                                  child: Text(
                                    'Register account',
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
                                    onTap: () {
                                      Navigator.pop(context, );
                                    },
                                    child: Text(" Sign In ",style: TextStyle(
                                        fontSize: 15.0,
                                        fontFamily: "Proxmia",
                                        color: Theme.of(context)
                                            .primaryColor
                                            .withOpacity(.9),
                                        fontWeight: FontWeight.w100),),
                                  ),
                                  Text("with your account",style: TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: "Proxmia",
                                      color: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(.3),
                                      fontWeight: FontWeight.w100),)
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
