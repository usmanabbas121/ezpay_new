import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: SvgPicture.asset("assets/dashboardbg.svg"),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 1,),flex: 2,),
                Expanded(child:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello!',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontFamily: "Proxmia",
                              color: Colors.white.withOpacity(.5),
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          'Mahmud Nik',
                          style: TextStyle(
                              fontSize: 25.0,
                              fontFamily: "Gilroy",
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/g.png"),
                    ),
                  ],
                ),flex: 3,),
                Expanded(child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3,bottom: 8,left: 15,right: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AutoSizeText(
                                    '£ 498.99',
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        fontFamily: "Gilroy",
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w700),
                                    maxLines: 2,
                                  ),

                                  AutoSizeText(
                                    'Available Balance',
                                    style: TextStyle(
                                        fontSize: 05.0,
                                        fontFamily: "Proxmia",
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w400),
                                    maxLines: 2,
                                  ),

                                  SizedBox(height: 12,),

                                  Row(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        child: SvgPicture.asset("assets/dot.svg"),
                                      ),
                                      SizedBox(width: 5,),
                                      AutoSizeText(
                                        'Spent',
                                        style: TextStyle(
                                            fontSize: 05.0,
                                            fontFamily: "Proxmia",
                                            color: Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w400),
                                        maxLines: 2,
                                      )
                                    ],
                                  ),
                                  AutoSizeText(
                                    '£ 738.99',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Gilroy",
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w700),
                                    maxLines: 2,
                                  ),


                                  SizedBox(height: 12,),

                                  Row(
                                    children: [
                                      Container(
                                        height: 10,
                                        width: 10,
                                        child: SvgPicture.asset("assets/recieve.svg"),
                                      ),
                                      SizedBox(width: 5,),
                                      AutoSizeText(
                                        'Received',
                                        style: TextStyle(
                                            fontSize: 05.0,
                                            fontFamily: "Proxmia",
                                            color: Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w400),
                                        maxLines: 2,
                                      )
                                    ],
                                  ),
                                  AutoSizeText(
                                    '£ 56988.99',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontFamily: "Gilroy",
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w700),
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            ),
                            flex: 1,
                          ),
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: SvgPicture.asset("assets/pie.svg"),
                            ),
                            flex: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                ),flex: 7,),

                Expanded(child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:10  ,bottom: 8,left: 15,right: 15),
                      child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            'Services',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontFamily: "Gilroy",
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w500),
                            maxLines: 2,
                          ),


                          Row(
                            children: [
                              Expanded(child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                  height: 65,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor.withOpacity(.2),
                                      borderRadius: BorderRadius.all(Radius.circular(12))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 08),
                                    child: Column(
                                      children: [

                                        InkWell(
                                          onTap: (){
                                            Navigator.pushNamed(context, "wallet");
                                          },
                                          child: Container(
                                            width: 30,
                                            height: 30,
                                            child: SvgPicture.asset("assets/wallet.svg"),
                                          ),
                                        ),
                                        SizedBox(height: 04,),
                                        AutoSizeText(
                                          'Wallet',
                                          style: TextStyle(
                                              fontSize: 05.0,
                                              fontFamily: "Proxmia",
                                              color: Theme.of(context).primaryColor,
                                              fontWeight: FontWeight.w800),
                                          maxLines: 2,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ), flex: 1,),


                              Expanded(child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                  height: 65,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFC700).withOpacity(.2),
                                      borderRadius: BorderRadius.all(Radius.circular(12))
                                  ),
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.pushNamed(context,"send");

                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 08),
                                      child: Column(
                                        children: [

                                          Container(
                                            width: 30,
                                            height: 30,
                                            child: SvgPicture.asset("assets/transfer.svg"),
                                          ),
                                          SizedBox(height: 04,),
                                          InkWell(

                                            child: AutoSizeText(
                                              'Transfer',
                                              style: TextStyle(
                                                  fontSize: 05.0,
                                                  fontFamily: "Proxmia",
                                                  color: Color(0xffFFC700),
                                                  fontWeight: FontWeight.w800),
                                              maxLines: 2,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ), flex: 1,),



                              Expanded(child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                  height: 65,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.all(Radius.circular(12))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 08),
                                    child: Column(
                                      children: [

                                        Container(
                                          width: 30,
                                          height: 30,
                                          child: SvgPicture.asset("assets/reward.svg",color: Colors.white,),
                                        ),
                                        SizedBox(height: 04,),
                                        AutoSizeText(
                                          'Rewards',
                                          style: TextStyle(
                                              fontSize: 05.0,
                                              fontFamily: "Proxmia",
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800),
                                          maxLines: 2,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ), flex: 1,),

                              Expanded(child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                  height: 65,
                                  decoration: BoxDecoration(
                                      color: Colors.green.withOpacity(.2),
                                      borderRadius: BorderRadius.all(Radius.circular(12))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 08),
                                    child: Column(
                                      children: [

                                        Container(
                                          width: 30,
                                          height: 30,
                                          child: SvgPicture.asset("assets/shp.svg",color: Colors.green,),
                                        ),
                                        SizedBox(height: 04,),
                                        AutoSizeText(
                                          'Shopping',
                                          style: TextStyle(
                                              fontSize: 05.0,
                                              fontFamily: "Proxmia",
                                              color: Colors.green,
                                              fontWeight: FontWeight.w800),
                                          maxLines: 2,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ), flex: 1,),




                            ],
                          ),

                          SizedBox(height: 03,),
                          Row(
                            children: [
                              Expanded(child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                  height: 65,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor.withOpacity(.2),
                                      borderRadius: BorderRadius.all(Radius.circular(12))
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 08),
                                    child: Column(
                                      children: [

                                        Container(
                                          width: 30,
                                          height: 30,
                                          child: SvgPicture.asset("assets/discount.svg",color: Theme.of(context).primaryColor,),
                                        ),
                                        SizedBox(height: 04,),
                                        AutoSizeText(
                                          'Vouchers',
                                          style: TextStyle(
                                              fontSize: 05.0,
                                              fontFamily: "Proxmia",
                                              color: Theme.of(context).primaryColor,
                                              fontWeight: FontWeight.w800),
                                          maxLines: 2,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ), flex: 1,),


                              Expanded(child:SizedBox(width: 1,), flex: 1,),



                              Expanded(child:SizedBox(width: 1,), flex: 1,),

                              Expanded(child:SizedBox(width: 1,), flex: 1,),




                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),flex: 7),


                Expanded(child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:10  ,bottom: 8,left: 15,right: 15),
                      child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AutoSizeText(
                                'Recent Spending',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: "Gilroy",
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w500),
                                maxLines: 2,
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context,"spendings");
                                },
                                child: AutoSizeText(
                                  'View All',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontFamily: "Proxmia",
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w500),
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),

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
                                    '£ -50.00',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontFamily: "Gilroy",
                                        color: Theme.of(context).primaryColor,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    '£ 5497',
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





                        ],
                      ),
                    ),
                  ),
                ),flex: 4),

              ],
            ),
          ),
        )
      ],
    );
  }
}
