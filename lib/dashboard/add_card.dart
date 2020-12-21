import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
class Creditcard extends StatefulWidget {
  @override
  _CreditcardState createState() => _CreditcardState();
}

class _CreditcardState extends State<Creditcard> {
  final picker = ImagePicker();
  TextEditingController name=new TextEditingController();
  TextEditingController number=new TextEditingController();
  TextEditingController month=new TextEditingController();
  TextEditingController year=new TextEditingController();
  TextEditingController cvvv=new TextEditingController();



  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        name.text="Muhammad Ashir";
        number.text="5160 6298 1400 2499";
        month.text="09";
        year.text="2024";
        cvvv.text="921";
      } else {
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Add a New Card",style: TextStyle(
            fontFamily: "Gilroy",
            fontStyle: FontStyle.normal,
            fontSize: 20.0, fontWeight: FontWeight.w700),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(

                          child: Container(
                              height:50,
                              child: SvgPicture.asset("assets/scancard.svg",color: Colors.white,)),
                        onTap: (){
                          getImage();
                        },),
                        SizedBox(height: 10,),
                        Text("Scan Card",style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: "Proxmia",
                            color: Colors.white,
                            fontWeight: FontWeight.w500),)
                      ],
                    )
                  ),
                  SizedBox(height: 40,),
                  Text("Full Name",style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: "Proxmia",
                      color: Theme.of(context)
                          .primaryColor
                          .withOpacity(.6),
                      fontWeight: FontWeight.w500),),
                  TextFormField(
                    controller: name,
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


                  Text("Credit Card Number",style: TextStyle(
                      fontSize: 13.0,
                      fontFamily: "Proxmia",
                      color: Theme.of(context)
                          .primaryColor
                          .withOpacity(.6),
                      fontWeight: FontWeight.w500),),
                  TextFormField(
                    controller: number,
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
                              child: SvgPicture.asset("assets/card.svg")),
                        ),
                        floatingLabelBehavior:
                        FloatingLabelBehavior.always,
                        hintText: "Your card number..",
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




                  Row(
                    children: [
                      Expanded(child: Column(children: [
                        Text("Exp. Month",style: TextStyle(
                            fontSize: 13.0,
                            fontFamily: "Proxmia",
                            color: Theme.of(context)
                                .primaryColor
                                .withOpacity(.6),
                            fontWeight: FontWeight.w500),),
                        TextFormField(
                          controller: month,
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
                                      child: Icon(Icons.calendar_today_outlined,color: Theme.of(context).primaryColor,))
                              ),
                              floatingLabelBehavior:
                              FloatingLabelBehavior.always,
                              hintText: "XX",
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
                      ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                      flex: 1,),

                      Expanded(child: Column(children: [
                        Text("Exp. Year",style: TextStyle(
                            fontSize: 13.0,
                            fontFamily: "Proxmia",
                            color: Theme.of(context)
                                .primaryColor
                                .withOpacity(.6),
                            fontWeight: FontWeight.w500),),
                        TextFormField(
                          controller: year,
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
                                      child: Icon(Icons.calendar_today_outlined,color: Theme.of(context).primaryColor,))
                              ),
                              floatingLabelBehavior:
                              FloatingLabelBehavior.always,
                              hintText: "XXXX",
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
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                        flex: 1,)

                      , Expanded(child: Column(children: [
                        Text("CVV",style: TextStyle(
                            fontSize: 13.0,
                            fontFamily: "Proxmia",
                            color: Theme.of(context)
                                .primaryColor
                                .withOpacity(.6),
                            fontWeight: FontWeight.w500),),
                        TextFormField(
                          controller: cvvv,
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
                                      child: Icon(Icons.security_outlined,color: Theme.of(context).primaryColor,))
                              ),
                              floatingLabelBehavior:
                              FloatingLabelBehavior.always,
                              hintText: "XXX",
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
                      ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                        flex: 1,)
                    ],
                  ),
                  SizedBox(height: 20,),





                  SizedBox(height: 35,),

                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Theme.of(context).primaryColor)),
                      onPressed: () {
                        showGeneralDialog(
                          barrierLabel:"Error",
                          barrierDismissible: true,
                          barrierColor: Colors.black.withOpacity(0.5),
                          transitionDuration: Duration(milliseconds: 500),
                          context: context,
                          pageBuilder: (_, __, ___) {
                            return Align(
                              alignment: Alignment.center,
                              child: Material(
                                color: Colors.transparent,
                                child: Container(
                                  height: 500,
                                  width: 300,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset("assets/cardadd.svg"),
                                      SizedBox(height: 30,),


                                    ],
                                  ),
                                  margin: EdgeInsets.only(bottom: 20, left: 12, right: 12,top: 40),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            );
                          },
                          transitionBuilder: (_, anim, __, child) {
                            return SlideTransition(
                              position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
                              child: child,
                            );
                          },
                        );
                      },
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: Text(
                        'Save Card',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Proxmia",
                            color: Colors.white,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),



                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
