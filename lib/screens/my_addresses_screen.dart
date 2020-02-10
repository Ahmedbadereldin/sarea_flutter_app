import 'package:flutter/material.dart';

class MyAddressesScreen extends StatefulWidget {

  @override
  _MyAddressesScreen createState() =>  _MyAddressesScreen();


}

class _MyAddressesScreen extends State<MyAddressesScreen> {

  bool isPress = false;


  Icon backIcon = Icon(Icons.arrow_forward_ios, color: Color(0xFFA02448));


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

      appBar: AppBar(
          flexibleSpace: Flex(direction: Axis.vertical,),
          title:
          Text(" عناويني",
              textDirection: TextDirection.rtl,
              style: (TextStyle(fontFamily: "Cairo",
                  color: Color(0xFFA02448),
                  fontSize: 20
              )
              )
          )
          ,
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xffF7F7F7).withOpacity(0.95),
          leading: IconButton(
            icon: Image.asset("assets/images/bag.png"), onPressed: () {},),
          actions: <Widget>[
            IconButton(icon: backIcon, onPressed: () {
              Navigator.pop(context);
            })
          ]

      ),

    );
  }
}