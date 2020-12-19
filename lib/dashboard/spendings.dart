import 'package:dotted_border/dotted_border.dart';
import 'package:ezpay/model_classes/spending_model_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../net_calls.dart';
class Spendings extends StatefulWidget {
  @override
  _Send_MoneyState createState() => _Send_MoneyState();
}

class _Send_MoneyState extends State<Spendings> {
  Future<List<Spendinglistjson>> mylist;
  Json_Datafetch obj=new Json_Datafetch();
  TextEditingController currency=new TextEditingController();
  @override
  void initState() {
    mylist=obj.getspendinglist();
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
                Expanded(
                    child:  FutureBuilder<List<Spendinglistjson>>(
                      future: mylist, // a Future<String> or null
                      builder: (BuildContext context, AsyncSnapshot<List<Spendinglistjson>> snapshot) {
                        switch (snapshot.connectionState) {
                          case ConnectionState.none: return new Text('Press button to start');
                          case ConnectionState.waiting: return new Text('Awaiting result...');
                          default:
                            if (snapshot.hasError)
                              return new Text('Error: ${snapshot.error}');
                            else
                            {
                              return

                                ListView.builder(
                                    padding: const EdgeInsets.all(8),
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      print(snapshot.data.length);
                                      return itemviewspending(snapshot.data[index]);
                                    }
                                );
                            }
                        }
                      },
                    )
                )



              ],

            ),
          ),
        ),
      ),
    );
  }
  Widget itemviewspending(Spendinglistjson item){

    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10),
      child: Row(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Expanded(
            child: Container(
              height: 45,
              width: 45,
              child: item.type=="contact" ?Image.asset("assets/g.png") :Image.asset("assets/comp.png"),
            ),
            flex: 2,
          ),
          Expanded(child:    Column(
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
                item.date.toString().substring(0,10),
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
                '£ -'+item.amount.toString(),
                style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: "Gilroy",
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                '£ '+item.left.toString(),
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
    );
  }
}