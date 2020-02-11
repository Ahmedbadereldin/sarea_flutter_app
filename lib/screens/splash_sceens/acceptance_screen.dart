import 'package:flutter/material.dart';
import 'package:sarea_flutter_app/screens/splash_sceens/register_screen.dart';

class AcceptanceScreen extends StatefulWidget {
  @override
  _AcceptanceScreen createState() => new _AcceptanceScreen();
}

class _AcceptanceScreen extends State<AcceptanceScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Scaffold(

        appBar: null,
        backgroundColor: Color(0xFFF7F7F7),
        body: Stack(
        fit: StackFit.expand,
        children:<Widget>[
          Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Center(child: Image.asset("assets/images/logo.png"))
              ,
              SizedBox(
                height: MediaQuery.of(context).size.height/15,
              )
              ,
              myButton()
              ,
              SizedBox(
                height: 10,
              )

              ,
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                margin: EdgeInsets.only(left: 35, right: 35),
                child: Text(
                  "بالضغط على موافق فأنت تؤكد موافقتك على شروط الخدمة وسياسة الخصوصية المرتبطة بالتطبيق  "
                      ,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"Cairo"
                      , color: Color(0xFFA02448) ,
                      fontSize: 12
                      ,
                      // fontWeight: FontWeight.w500
                    )
                    )
                ),
              )





            ],
          )
        ],
    ),
      );
  }


  Widget myButton() {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      margin: EdgeInsets.only(left: 30, right: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),

        gradient:  LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFA22447),
            Color(0xFFEF5831),
          ],
        ) ,

      ),
      child: FlatButton(

        padding: EdgeInsets.all(10),

        child:  Text("موافق",
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
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return RegisterScreen();
          }));
        },


      ),


    );
  }

}