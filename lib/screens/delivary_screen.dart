
import 'package:flutter/material.dart';

class DelivaryScreen extends StatefulWidget {

  @override
  _DelivaryScreen createState() =>  _DelivaryScreen();


}

class _DelivaryScreen extends State<DelivaryScreen> {

  bool isPress = false;


  Icon backIcon = Icon(Icons.arrow_back_ios, color: Color(0xFFA02448));


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isPress = false;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffF6F5F5),

        appBar:AppBar(
          flexibleSpace: Flex( direction: Axis.vertical,),
            title:
            Text("التوصيل",
                textDirection: TextDirection.rtl,
                style: (TextStyle (fontFamily:"Cairo",
                    color: Color(0xFFA02448) ,
                    fontSize: 20
                )
                )
            )
            ,
            elevation: 0,
            centerTitle: true,
            backgroundColor: Color(0xffF7F7F7).withOpacity(0.95),
            leading:  IconButton(icon: backIcon, onPressed: () {
              Navigator.pop(context);
            }),
            actions: <Widget>[
              IconButton( icon:Image.asset("assets/images/bag.png"), onPressed: () {},)
            ]

        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: <Widget>[
              MyCard("تحديد وقت التوصيل",0),
              SizedBox(width: 10),
              MyCard("التوصيل حاليا",1)
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height/3),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),

              gradient:  LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFA22447),
                  Color(0xFFEF5831),
                ],
              ) ,

            ),
            margin: EdgeInsets.only(left: 30, right: 30),
            child: FlatButton(

              padding: EdgeInsets.all(13),


              child:  Text(" تحديد مكان التوصيل ",
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: (TextStyle(
                    fontFamily: "Cairo",
                    color: Colors.white,
                    fontSize: 16
                    ,
                  )
                  )
              ),
              onPressed: () {

              },


            ),


          )
          ,SizedBox(height: 20)
        ],
      ),
    );
  }

  Widget MyCard(str,i){
    return InkWell(
      onTap: (){
        setState(() {
          isPress = !isPress;
        });

      },
      child: Container(
        height: MediaQuery.of(context).size.width*1.3/3,
        width: MediaQuery.of(context).size.width*1.3/3,

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),

            gradient: isPress? LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFFA22447).withOpacity(.25),
                Color(0xFFEF5831).withOpacity(.25),
              ],
            ) :
            LinearGradient(

              colors: [
                Color(0xFFF4EFF0),
                Color(0xFFF4EFF0)
              ],
            )
        ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              i==0?Image.asset("assets/images/ic_delivery.png"):Image.asset("assets/images/ic_fast_delivery.png"),
              SizedBox(height: 10),
              Text(str,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: (TextStyle(
                    fontFamily: "Cairo",
                    color: Color(0xFFA02448),
                    fontSize: 14
                    ,
                  )
                  ))
            ],
          ),


        ),


    );
  }
}
