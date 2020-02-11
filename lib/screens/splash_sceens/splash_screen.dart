import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:sarea_flutter_app/constants/constants.dart';


class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashScreen();
  }

}
class _SplashScreen extends State<SplashScreen>{
  startTime() async {
    var _duration = new Duration(seconds: 1);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(HOME_SCREEN);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Color(0xFFF7F7F7),
      body: Stack(
        fit: StackFit.expand,
        children:<Widget>[
          Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Image.asset("assets/images/logo.png")
              ,

              Text(
                  "تسوق بأفضل الأسعار" ,
                  textDirection: TextDirection.rtl,
                  style: (TextStyle (fontFamily:"Cairo"
                    , color: Color(0xFFA02448) ,
                    fontSize: 20
                    ,
                    // fontWeight: FontWeight.w500
                  )
                  )
              )
              ,

              Text(
                "وأسرع توصيل" ,
                textDirection: TextDirection.rtl,
                style: (TextStyle (fontFamily:"Cairo"
                    , color: Color(0xFFA02448) ,
                    fontSize: 20
                )

                )
                ,
              )



            ],
          )
        ],
      ),
    );
  }
}






