import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Contactlist extends StatefulWidget {
  @override
  _ContactlistState createState() => _ContactlistState();
}

class _ContactlistState extends State<Contactlist> {
  void send(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Choose Contact",style: TextStyle(
            fontFamily: "Gilroy",
            fontStyle: FontStyle.normal,
            fontSize: 20.0, fontWeight: FontWeight.w700),),
      ),
      body:  Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40,left: 30,right: 30),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 08),
                  child: Text("Recent",style: TextStyle(
                      fontFamily: "Gilroy",
                      color: Color(0xFF233067),
                      fontStyle: FontStyle.normal,
                      fontSize: 18.0, fontWeight: FontWeight.w700),),
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){

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
                  child: Row(
                    children: [
                      Expanded(child: recent(),flex: 1,),
                      Expanded(child: recent(),flex: 1,),
                      Expanded(child: recent(),flex: 1,),
                      Expanded(child: recent(),flex: 1,),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 08),
                  child: Text("All Contacts",style: TextStyle(
                      fontFamily: "Gilroy",
                      color: Color(0xFF233067),
                      fontStyle: FontStyle.normal,
                      fontSize: 18.0, fontWeight: FontWeight.w700),),
                ),

                SizedBox(height: 20,),
                contactitem(),
                contactitem(),contactitem(),
                contactitem(),contactitem(),

              ],

            ),
          ),
        ),
      ),
    );
  }

  Widget contactitem(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Expanded(
              child: Container(
                height: 45,
                width: 45,
                child: Image.asset("assets/g.png"),
              ),
              flex: 2,
            ),
            Expanded(child:    Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    'John Smith Doe',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "Gilroy",
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '+91423920390',
                    style: TextStyle(
                        fontSize: 13.0,
                        fontFamily: "Proxmia",
                        color: Theme.of(context).primaryColor.withOpacity(.5),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),flex: 10,),

          ],
        ),
        SizedBox(height: 20,),
      ],
    );
  }


  Widget recent(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 05,),
        Container(
          height: 45,
          width: 45,
          child: Image.asset("assets/f.png"),
        ),
        SizedBox(height: 05,),
        Text(
          'Aliza',
          style: TextStyle(
              fontSize: 15.0,
              fontFamily: "Gilroy",
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w400),
        ),

      ],
    );
  }
}
