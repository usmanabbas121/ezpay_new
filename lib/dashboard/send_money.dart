import 'package:barcode_scan/platform_wrapper.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:qrscan/qrscan.dart';

class Send_Money extends StatefulWidget {
  @override
  _Send_MoneyState createState() => _Send_MoneyState();
}

class _Send_MoneyState extends State<Send_Money> {
  TextEditingController currency=new TextEditingController();
  @override
  void initState() {
    currency.text="100";
    // TODO: implement initState
    super.initState();
  }
  void add(){
    int current=int.parse(currency.text);
    current=current+10;
    setState(() {
      currency.text=current.toString();
    });
  }
  void minus(){
    int current=int.parse(currency.text);
    current=current-10;
    setState(() {
      currency.text=current.toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:Text("Transfer Money",style: TextStyle(
              fontFamily: "Gilroy",
              fontStyle: FontStyle.normal,
              fontSize: 20.0, fontWeight: FontWeight.w700),),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 40,
                          child: MaterialButton(
                            onPressed: minus,
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            child: Icon(
                              Icons.horizontal_rule,
                              size: 10,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 150,
                              child:  TextFormField(
                                keyboardType: TextInputType.number,
                                style:  TextStyle(
                                    fontSize: 25.0,
                                    fontFamily: "Proxmia",
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold),
                                controller: currency,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    CupertinoIcons.money_pound,
                                    color: Color(0xFF233067),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        flex: 5,
                      ),


                      Expanded(
                        child: Container(
                          width: 40,
                          child: MaterialButton(
                            onPressed: add,
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            child: Icon(
                              Icons.add,
                              size: 10,
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                          ),
                        ),
                        flex: 1,
                      )
                    ],
                  ),
                ),

                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: Row(
                    children: [
                      Expanded(child: buttons("05"),flex: 1,),
                      Expanded(child: buttons("15"),flex: 1,),
                      Expanded(child: buttons("75"),flex: 1,),
                      Expanded(child: buttons("155"),flex: 1,),


                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: Row(
                    children: [
                      Expanded(child: buttons("200"),flex: 1,),
                      Expanded(child: buttons("500"),flex: 1,),
                      Expanded(child: buttons("1000"),flex: 1,),
                      Expanded(child: buttons("1500"),flex: 1,),


                    ],
                  ),


                ),
                SizedBox(height: 40,),


                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    children: [
                      Expanded(child:  Padding(
                        padding: const EdgeInsets.only(left: 05,right: 05),
                        child: Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Theme.of(context).primaryColor)),
                            onPressed: () {
                              Navigator.pushNamed(context, "tocompany",arguments: currency.text);
                            },
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            child: Text("To Merchant".toUpperCase(),
                                style: TextStyle(fontSize: 14)),
                          ),
                        ),
                      ),flex: 1,),
                      Expanded(child:  Padding(
                        padding: const EdgeInsets.only(left: 05,right: 05),
                        child: Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Theme.of(context).primaryColor)),
                            onPressed: () {
                              Navigator.pushNamed(context, "tocontact",arguments: currency.text);
                            },
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            child: Text("To Contact".toUpperCase(),
                                style: TextStyle(fontSize: 14)),
                          ),
                        ),
                      ),flex: 1,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Theme.of(context).primaryColor)),
                      onPressed: () async {
                        String cameraScanResult = await scanner.scan();
                        print("result"+ cameraScanResult);
                        if(cameraScanResult.isNotEmpty){


                          showGeneralDialog(
                            barrierLabel:"Error",
                            barrierDismissible: false,
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
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 40,bottom: 20,left: 30,right: 30),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height:100,
                                              width: 100,
                                              child: Image.asset("assets/success.png")),
                                          SizedBox(height: 20,),
                                          Text(
                                            'Payment Sent!',
                                            style: TextStyle(
                                                fontSize: 25.0,
                                                fontFamily: "Gilroy",
                                                color: Theme.of(context).primaryColor,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(height: 05,),
                                          Text("Payment has been successfully Sent. Details are below",style:TextStyle(
                                              fontSize: 10.0,
                                              fontFamily: "Proxmia",
                                              color: Theme.of(context).primaryColor,
                                              fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                          SizedBox(height: 20,),
                                          DottedBorder(
                                            color: Theme.of(context).primaryColor,
                                            dashPattern: [6, 3, 6, 3],
                                            strokeWidth: 1,
                                            borderType: BorderType.RRect,
                                            radius: Radius.circular(08),
                                            padding: EdgeInsets.all(4),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.all(Radius.circular(08)),
                                              child: Container(
                                                width: MediaQuery.of(context).size.width,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(10),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Amount Paid',
                                                            style: TextStyle(
                                                                fontSize: 15.0,
                                                                fontFamily: "Gilroy",
                                                                color: Theme.of(context).primaryColor,
                                                                fontWeight: FontWeight.w400),
                                                          ),
                                                          Text(
                                                            '£ '+currency.text,
                                                            style: TextStyle(
                                                                fontSize: 15.0,
                                                                fontFamily: "Gilroy",
                                                                color: Theme.of(context).primaryColor,
                                                                fontWeight: FontWeight.w400),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 10,),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Sent to',
                                                            style: TextStyle(
                                                                fontSize: 15.0,
                                                                fontFamily: "Gilroy",
                                                                color: Theme.of(context).primaryColor,
                                                                fontWeight: FontWeight.w400),
                                                          ),
                                                          Text(
                                                            cameraScanResult,
                                                            style: TextStyle(
                                                                fontSize: 15.0,
                                                                fontFamily: "Gilroy",
                                                                color: Theme.of(context).primaryColor,
                                                                fontWeight: FontWeight.w400),
                                                          ),


                                                        ],
                                                      ),
                                                      SizedBox(height: 10,),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Date',
                                                            style: TextStyle(
                                                                fontSize: 15.0,
                                                                fontFamily: "Gilroy",
                                                                color: Theme.of(context).primaryColor,
                                                                fontWeight: FontWeight.w400),
                                                          ),
                                                          Text(
                                                            DateTime.now().toString().substring(0,10),
                                                            style: TextStyle(
                                                                fontSize: 15.0,
                                                                fontFamily: "Gilroy",
                                                                color: Theme.of(context).primaryColor,
                                                                fontWeight: FontWeight.w400),
                                                          ),


                                                        ],
                                                      ),
                                                      SizedBox(height: 10,),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Time',
                                                            style: TextStyle(
                                                                fontSize: 15.0,
                                                                fontFamily: "Gilroy",
                                                                color: Theme.of(context).primaryColor,
                                                                fontWeight: FontWeight.w400),
                                                          ),
                                                          Text(
                                                            DateTime.now().toString().substring(10,19),
                                                            style: TextStyle(
                                                                fontSize: 15.0,
                                                                fontFamily: "Gilroy",
                                                                color: Theme.of(context).primaryColor,
                                                                fontWeight: FontWeight.w400),
                                                          ),


                                                        ],
                                                      ),


                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 20,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 30,right: 30),
                                            child: Container(
                                              height: 35,
                                              width: MediaQuery.of(context).size.width,
                                              child: RaisedButton(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(05.0),
                                                    side: BorderSide(color: Theme.of(context).primaryColor)),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                color: Theme.of(context).primaryColor,
                                                textColor: Colors.white,
                                                child: Text("Back to Home".toUpperCase(),
                                                    style: TextStyle(fontSize: 14)),
                                              ),
                                            ),
                                          )

                                        ],
                                      ),
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
                        }

                      },
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: Text("Scan QR".toUpperCase(),
                          style: TextStyle(fontSize: 14)),
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(top: 05,left: 30,right: 30),
                  child: Text("Recent Transactions",style: TextStyle(
                      fontFamily: "Gilroy",
                      color: Color(0xFF233067),
                      fontStyle: FontStyle.normal,
                      fontSize: 18.0, fontWeight: FontWeight.w600),),
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
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
                              padding: const EdgeInsets.only(left: 20),
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
                                    '£ -50.00',
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: "Gilroy",
                                        color: Theme.of(context).primaryColor.withOpacity(.7),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ]
                              ),
                            ),flex: 8,),
                            Expanded(child:    Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [

                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Icon(Icons.refresh_outlined,color: Colors.white,),
                                )


                              ],
                            ),flex: 3,)
                          ],
                        ),
                        SizedBox(height: 20,),
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
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [

                                    Text(
                                      'Ashir Ali',
                                      style: TextStyle(
                                          fontSize: 15.0,
                                          fontFamily: "Gilroy",
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      '£ -70.00',
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontFamily: "Gilroy",
                                          color: Theme.of(context).primaryColor.withOpacity(.7),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ]
                              ),
                            ),flex: 8,),
                            Expanded(child:    Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [

                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                  ),
                                  child: Icon(Icons.refresh_outlined,color: Colors.white,),
                                )


                              ],
                            ),flex: 3,)
                          ],
                        ),
                        SizedBox(height: 20,),

                      ],
                    ),
                  ),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }

  Widget buttons(String amount){
    return  Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(.15),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Center(
            child: Text("£ "+amount,style:TextStyle(
                fontSize: 15.0,
                fontFamily: "Proxmia",
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold)),
          )
      ),
    );
  }
}