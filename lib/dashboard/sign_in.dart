import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Send_Money extends StatefulWidget {
  @override
  _Send_MoneyState createState() => _Send_MoneyState();
}

class _Send_MoneyState extends State<Send_Money> {
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
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40,left: 30,right: 30),
                  child: Text("Send Money to Contact",style: TextStyle(
                      fontFamily: "Gilroy",
                      color: Color(0xFF233067),
                      fontStyle: FontStyle.normal,
                      fontSize: 28.0, fontWeight: FontWeight.w700),),
                ),

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
                                    Icons.euro,
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
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Theme.of(context).primaryColor)),
                      onPressed: () {},
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: Text("SEND NOW".toUpperCase(),
                          style: TextStyle(fontSize: 14)),
                    ),
                  ),
                ),
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