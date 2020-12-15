import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Spendings extends StatefulWidget {
  @override
  _Send_MoneyState createState() => _Send_MoneyState();
}

class _Send_MoneyState extends State<Spendings> {
  TextEditingController currency=new TextEditingController();
  @override
  void initState() {
    currency.text="123332";
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
        body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 40,left: 30,right: 30),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Recent Spendings",style: TextStyle(
                      fontFamily: "Gilroy",
                      color: Color(0xFF233067),
                      fontStyle: FontStyle.normal,
                      fontSize: 28.0, fontWeight: FontWeight.w700),),

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
                      Expanded(child:    Column(
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
                            '20 March',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),flex: 5,),
                      Expanded(child:    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Text(
                            '€ -50.00',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: "Gilroy",
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '€ 5497',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
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
                      Expanded(child:    Column(
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
                            '20 March',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),flex: 5,),
                      Expanded(child:    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Text(
                            '€ -50.00',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: "Gilroy",
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '€ 5497',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
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
                      Expanded(child:    Column(
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
                            '20 March',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),flex: 5,),
                      Expanded(child:    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Text(
                            '€ -50.00',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: "Gilroy",
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '€ 5497',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
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
                      Expanded(child:    Column(
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
                            '20 March',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),flex: 5,),
                      Expanded(child:    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Text(
                            '€ -50.00',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: "Gilroy",
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '€ 5497',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
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
                      Expanded(child:    Column(
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
                            '20 March',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),flex: 5,),
                      Expanded(child:    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Text(
                            '€ -50.00',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: "Gilroy",
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '€ 5497',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
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
                      Expanded(child:    Column(
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
                            '20 March',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),flex: 5,),
                      Expanded(child:    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Text(
                            '€ -50.00',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: "Gilroy",
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '€ 5497',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
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
                      Expanded(child:    Column(
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
                            '20 March',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),flex: 5,),
                      Expanded(child:    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Text(
                            '€ -50.00',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: "Gilroy",
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '€ 5497',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
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
                      Expanded(child:    Column(
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
                            '20 March',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),flex: 5,),
                      Expanded(child:    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          Text(
                            '€ -50.00',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: "Gilroy",
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '€ 5497',
                            style: TextStyle(
                                fontSize: 13.0,
                                fontFamily: "Proxmia",
                                color: Theme.of(context).primaryColor.withOpacity(.5),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),flex: 3,)
                    ],
                  ),
                  SizedBox(height: 20,),
                ],

              ),
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
            child: Text("€ "+amount,style:TextStyle(
                fontSize: 15.0,
                fontFamily: "Proxmia",
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold)),
          )
      ),
    );
  }
}