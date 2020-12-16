import 'package:auto_size_text/auto_size_text.dart';
import 'package:awesome_card/credit_card.dart';
import 'package:awesome_card/extra/card_type.dart';
import 'package:awesome_card/style/card_background.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList.map((item) => Container(
      width: MediaQuery.of(context).size.width,
      child: CreditCard(
        cardNumber: "54507*******",
        cardExpiry: "10/25",
        cardHolderName: "Ali Hamza",
        cvv: "456",
        bankName: "FizPay",
        cardType: CardType.masterCard, // Optional if you want to override Card Type
        showBackSide: false,
        frontBackground: CardBackgrounds.black,
        backBackground: CardBackgrounds.white,
        showShadow: false,
      ),
    )).toList();
    return Scaffold(
        appBar: AppBar(
          title:Text("Wallet",style: TextStyle(
              fontFamily: "Gilroy",
              fontStyle: FontStyle.normal,
              fontSize: 20.0, fontWeight: FontWeight.w700),),
        ),
      body: Container(
        child:SingleChildScrollView(
          child: Column(
            children: [

              Container(
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 1.5,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    initialPage: 4,
                    autoPlay: false,
                  ),
                  items: imageSliders,
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(top:10  ,bottom: 8,left: 20,right: 20),
                child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                  children: [


                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(color: Theme.of(context).primaryColor)),
                        onPressed: () {
                          Navigator.pushNamed(context, "add_card");
                        },
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: Text(
                          'Add New Card',
                          style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: "Proxmia",
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AutoSizeText(
                            'Your Cards',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: "Gilroy",
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.w500),
                            maxLines: 2,
                          ),

                        ],
                      ),
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
                            child: Image.asset("assets/symbols.png"),
                          ),
                          flex: 2,
                        ),
                        Expanded(child:    Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'John - VISA',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Gilroy",
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '***2579 | Expires on 07/23',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Proxmia",
                                  color: Theme.of(context).primaryColor.withOpacity(.5),
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),flex: 8,),

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
                            child: Image.asset("assets/mastercard.png"),
                          ),
                          flex: 2,
                        ),
                        Expanded(child:    Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'John - MASTERCARD',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Gilroy",
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '***2579 | Expires on 07/23',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Proxmia",
                                  color: Theme.of(context).primaryColor.withOpacity(.5),
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),flex: 8,),

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
                            child: Image.asset("assets/symbols.png"),
                          ),
                          flex: 2,
                        ),
                        Expanded(child:    Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'John - VISA',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Gilroy",
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '***2579 | Expires on 07/23',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Proxmia",
                                  color: Theme.of(context).primaryColor.withOpacity(.5),
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),flex: 8,),

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
                            child: Image.asset("assets/mastercard.png"),
                          ),
                          flex: 2,
                        ),
                        Expanded(child:    Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Text(
                              'John - MASTERCARD',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Gilroy",
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '***2579 | Expires on 07/23',
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontFamily: "Proxmia",
                                  color: Theme.of(context).primaryColor.withOpacity(.5),
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),flex: 8,),

                      ],
                    ),







                  ],
                ),
              ),


            ],
          ),
        )
      )
    );
  }
}
