import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Profile extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Profile> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 312,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/profliebg.png"),
                fit: BoxFit.fitWidth,
              )
          ),
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                Container(
                  height: 80,
                  width: 80,
                  child: Image.asset("assets/profiledp.png"),
                ),
                SizedBox(height: 10,),
                Text(
                  'Mahmud Nik',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontFamily: "Gilroy",
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'ID: 524687975',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: "Proxmia",
                      color: Colors.white.withOpacity(.5),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 10,),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.white)),
                  onPressed: () {},
                  color: Colors.white,
                  textColor: Theme.of(context).primaryColor,
                  child: Text("Edit Profile".toUpperCase(),
                      style: TextStyle(fontSize: 12)),
                ),

              ],
            ),
          ),

        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,top: 5),
            child: ListView(
              children: [
                listviewitem('pass','Password'),
                SizedBox(height: 10,),
                listviewitem('mail','Email'),
                SizedBox(height: 10,),
                listviewitem('fingerprint','Email'),
                SizedBox(height: 10,),
                listviewitem('support','Support'),
                SizedBox(height: 10,),
                listviewitem('signout','Sign Out'),
                SizedBox(height: 100,),


              ],
            ),
          ),
        ),

      ],
    );
  }

  Widget listviewitem(String icon, String text){
    return Container(
      height: 65,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Theme.of(context).primaryColor.withOpacity(.05)
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 05,right: 05,),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    color: Theme.of(context).primaryColor.withOpacity(.1)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: SvgPicture.asset('assets/'+icon+'.svg',height: 10,width: 10,),
                ),
              ),
            ),
          ),

          Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: "Proxmia",
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w400),
                ),
              )
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Icon(Icons.arrow_forward_ios,
                color: Theme.of(context).primaryColor,
                size: 15,
              ),

            ),
          )
        ],
      ),
    );
  }
}
