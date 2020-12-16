import 'package:flutter/material.dart';
class CompanyList extends StatefulWidget {
  @override
  _ContactlistState createState() => _ContactlistState();
}

class _ContactlistState extends State<CompanyList> {
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
        child: SingleChildScrollView(
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
                    'Dribble',
                    style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: "Gilroy",
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'The Drible Co',
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
