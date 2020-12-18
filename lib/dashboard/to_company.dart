import 'package:dotted_border/dotted_border.dart';
import 'package:ezpay/model_classes/contacts_lsit.dart';
import 'package:flutter/material.dart';

import '../all_data.dart';
class CompanyList extends StatefulWidget {
  String amount;
  @override
  _ContactlistState createState() => _ContactlistState();
  CompanyList(this.amount);
}

class _ContactlistState extends State<CompanyList> {
  Mydata data=new Mydata();
  List<company_list> mycomplist=  new List<company_list>();
  void initState() {

    mycomplist=data.getcompanieslist();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Choose Merchant",style: TextStyle(
            fontFamily: "Gilroy",
            fontStyle: FontStyle.normal,
            fontSize: 20.0, fontWeight: FontWeight.w700),),
      ),
      body:  Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 20,left: 30,right: 30),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 08),
                child: Text("All Companies",style: TextStyle(
                    fontFamily: "Gilroy",
                    color: Color(0xFF233067),
                    fontStyle: FontStyle.normal,
                    fontSize: 18.0, fontWeight: FontWeight.w700),),
              ),

              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: mycomplist.length,
                    itemBuilder: (BuildContext context, int index) {
                      print(mycomplist.length);
                      return InkWell(
                          onTap:   (){
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
                                                          '£ '+widget.amount,
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
                                                          mycomplist[index].name,
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
                      },
                          child: contactitem(mycomplist[index]));
                    }
                ),
              )
            ],

          ),
        ),
      ),
    );
  }

  Widget contactitem(company_list item){
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
                child: Image.asset("assets/comp.png"),
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
                    item.name,
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "Gilroy",
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    item.fullname,
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


}
