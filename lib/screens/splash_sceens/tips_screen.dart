import 'package:flutter/material.dart';
import 'package:sarea_flutter_app/screens/splash_sceens/acceptance_screen.dart';
import 'package:sarea_flutter_app/screens/login_screen.dart';
import 'package:sarea_flutter_app/screens/splash_sceens/otp_screen.dart';
import 'package:sarea_flutter_app/screens/splash_sceens/register_screen.dart';
import 'package:sarea_flutter_app/screens/return_password_screen.dart';

class TipScreen extends StatefulWidget {
  @override
  _TipScreen createState() => new _TipScreen();
}

class _TipScreen extends State<TipScreen>{



  @override
  Widget build(BuildContext context) {


    final List<int> numbers = [1, 2, 3];
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFF7F7F7) ,
            elevation: 0,
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios , color: Color(0xFFA02448)),
                onPressed: () {
                  Navigator.pop(context);
                })
        ),
        backgroundColor: Color(0xFFF7F7F7),
        body:ListView(
          children: <Widget>[
            Column(
              children: <Widget>[

                Text("مرحبا بكم في تطبيق",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"Cairo"
                      , color: Color(0xFFA02448) ,
                      fontSize: 20
                      ,
                      // fontWeight: FontWeight.w500
                    )
                    )),
                Text("سريع ",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"Cairo"
                      , color: Color(0xFFA02448) ,
                      fontSize: 24
                      ,
                      fontWeight: FontWeight.w600
                      // fontWeight: FontWeight.w500
                    )
                    )),


                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: numbers.length, itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 10,right: 10),
                      child: Card(
                        color: Color(0xffF1E3E3),
                        child: Container(
                          child: Center(child: Text(numbers[index].toString(), style: TextStyle(color: Colors.white, fontSize: 36.0),)),
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 10)
                ,
                Container(
                  margin: EdgeInsets.only(right: 10,left: 10),
                  child: Text( "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد  هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أوالتطبيق",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: (TextStyle(
                        fontFamily: "SF Pro",
                        color: Color(0xFFA02448),
                        fontSize: 14
                        ,
                      )
                      )
                  ),
                ),
                SizedBox(
                  height: 15
                ),


                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
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
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: FlatButton(

                    padding: EdgeInsets.all(10),

                    child:  Text("التسجيل",
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
                        return RegisterScreen() ;
                      }));
                    },


                  ),


                ),
                SizedBox(height: 13),


                Container(
                  color:Color(0xFFF7F7F7),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: OutlineButton(

                    borderSide: BorderSide(
                      color:Color(0xFFA02448), //Color of the border
                      style: BorderStyle.solid, //Style of the border
                      width: 0.8, //width of the border
                    ),

                    padding: EdgeInsets.all(10),
                    //  color: i==0? Color(0xFFA02448) :Color(0xFFF7F7F7),
                    shape: RoundedRectangleBorder(
                      borderRadius:  BorderRadius.circular(5),

                    ),


                    child:  Text("تسجيل الدخول",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: (TextStyle(
                          fontFamily: "Cairo",
                          color: Color(0xFFA02448),
                          fontSize: 16
                          ,
                        )
                        )
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoginScreen();
                      }));
                    },


                  ),


                )
                ,
                    FlatButton(
                      child:
                      Text("شروط الخدمة",
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          style: (TextStyle (fontFamily:"Cairo"
                            , color: Color(0xFFA02448) ,
                            fontSize: 12
                            ,
                            // fontWeight: FontWeight.w500
                          )
                          )), onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                       return AcceptanceScreen();
                      }));
                    } ,

                    ),

                SizedBox(
                  height: 25,
                )

              ],
            )
          ],
        )
    );
  }


  Widget myButton(String str , int i) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      margin: EdgeInsets.only(left: 30, right: 30),
      child: RaisedButton(

        padding: EdgeInsets.all(10),
      color:  Color(0xFFA02448) ,
        shape: RoundedRectangleBorder(
          borderRadius:  BorderRadius.circular(5),

        ),


        child:  Text("التسجيل",
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
            return RegisterScreen() ;
          }));
        },


      ),


    );
  }


}