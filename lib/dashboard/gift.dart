import 'dart:ffi';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class merchant extends StatefulWidget {
  @override
  _merchantState createState() => _merchantState();
}

class _merchantState extends State<merchant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF720194),
        title: Column(
            children: [
              Text("Rewards          ",style: TextStyle(fontSize: 20),),
              SizedBox(height: 03,),
              Text("Last Updated, Just now",style: TextStyle(fontSize: 12),)
            ]
        ),
        actions: [
          IconButton(
            icon: Icon(FontAwesomeIcons.questionCircle),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
              options: CarouselOptions(autoPlay: true, ),
              items: imgList.map((item) => Container(
                child: Center(
                    child: Image.network(item, fit: BoxFit.cover, width: 1000, height: 190,)
                ),
              )).toList(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5,),
              child: ColoredBox(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment:  MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 03,),
                        Container(
                          width: 40,
                          height: 40,
                          child: Icon(FontAwesomeIcons.language, size: 20,color: Colors.white,),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF720194)),
                        ),
                        SizedBox(height: 03,),
                        Text("Cashbacks"),
                        SizedBox(height: 03,),
                        Text("¥29"),
                        SizedBox(height: 03,),

                      ],
                    ),
                    SizedBox(width: 05,),
                    Column(
                      mainAxisAlignment:  MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 03,),
                        Container(
                          width: 40,
                          height: 40,
                          child: Icon(FontAwesomeIcons.percentage, size: 20,color: Colors.white,),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF720194)),
                        ),
                        SizedBox(height: 03,),
                        Text("Offers"),
                        SizedBox(height: 03,),
                        Text("4"),
                        SizedBox(height: 03,),

                      ],

                    ),
                    SizedBox(width: 05,),
                    Column(
                      mainAxisAlignment:  MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 03,),
                        Container(
                          width: 40,
                          height: 40,
                          child: Icon(FontAwesomeIcons.tag, size: 20,color: Colors.white,),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF720194)),
                        ),
                        SizedBox(height: 03,),
                        Text("Coupons"),
                        SizedBox(height: 03,),
                        Text("16"),
                        SizedBox(height: 03,),
                      ],

                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 05,),

            Expanded(
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2 ,
                children: List.generate(31,(index){
                  return Container(
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Icon(FontAwesomeIcons.solidHeart, color: Colors.red,),
                          SizedBox(height: 18,),
                          Text("Coupon Won", overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.w400),),
                          SizedBox(height: 5,),
                          Text("Buy 1 Get $index Free", overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                          SizedBox(height: 25,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
                              child: Text(
                                "Expires on: $index Nov",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Color(0xFFdee3e2),
                                borderRadius: BorderRadius.circular(20)

                            ),
                          ),

                        ],
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
