import 'package:flutter/material.dart';
import 'package:sarea_flutter_app/screens/login_screen.dart';
import 'package:sarea_flutter_app/screens/register_screen.dart';

class ReturnPasswordScreen extends StatefulWidget {
  @override
  _ReturnPasswordScreen createState() =>  _ReturnPasswordScreen();
}

class _ReturnPasswordScreen extends State<ReturnPasswordScreen>{

  TextEditingController usermobile = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Scaffold(

        appBar: null,
        backgroundColor: Color(0xFFF4EFF0),
        body: ListView(

          children:<Widget>[

            Column(

              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(height: 30),
                IconButton(
                  icon: Icon(Icons.close,size: 40,color: Color(0xFFA02448)),
                  onPressed: () {
                    Navigator.pop(context);

                  },),


                Image.asset("assets/images/small_logo.png")
                ,
               Container(
                 width: MediaQuery.of(context).size.width,
                 margin: EdgeInsets.only(left: 15,right: 15),
                 color: Colors.white,
                 child: Column(children: <Widget>[

                   SizedBox(
                     height: 30,
                   )
                   ,

                   Text("استعادة كلمة السر",
                       textAlign: TextAlign.center,
                       textDirection: TextDirection.rtl,
                       style: (TextStyle (fontFamily:"Cairo"
                         , color: Color(0xFFA02448) ,
                         fontSize: 20
                         ,
                         // fontWeight: FontWeight.w500
                       )
                       )),

                   //////////////////////////هنااااااااااااا
                   Text("                    ",
                       textAlign: TextAlign.center,
                       textDirection: TextDirection.rtl,
                       style: (TextStyle (fontFamily:"Cairo"
                         , color: Color(0xFFA02448) ,
                         fontSize: 12
                         ,
                         // fontWeight: FontWeight.w500
                       )
                       )),

                   Container(
                       width: MediaQuery
                           .of(context)
                           .size
                           .width,

                       margin: EdgeInsets.only(left: 20, right: 20 ),
                       child:

                       TextField(
                         keyboardType: TextInputType.number,
                         cursorColor: Color(0xFFA02448),
                         controller: usermobile,
                         textAlign: TextAlign.center,
                         onChanged: (String value) {
                           setState(() {
                             //   user.name = value;
                           });

                         },

                         decoration: InputDecoration(

                           filled: true,
                           fillColor: Color(0xFF610866).withOpacity(.04),
                           hintText: "الموبايل",
                           hintStyle: TextStyle(
                               color: Color(0xFFA02448),
                               fontFamily: "Cairo",
                               fontSize:16 ),
                           
                           border: InputBorder.none,



                         ),


                       )

                   )
                   ,
                   SizedBox(
                     height: 45,
                   ),

                   myButton(),
                   SizedBox(
                     height: 20,
                   )
                   ,
                   SizedBox(height: 40,)

                 ],),
               )
                ,

                Container(
                  height: 22,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.arrow_back_ios,
                          size: 15,
                          color: Color(0xffA02448),
                          textDirection: TextDirection.rtl)
                      ,
                      SizedBox(
                        width: 7,
                      )

                      ,
                      Text("حسابي",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style: (TextStyle(
                            fontFamily: "SF Pro",
                            color: Color(0xffA02448),
                            fontSize: 14
                            ,
                          )
                          )
                      )

                    ],
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
      margin: EdgeInsets.only(left: 20, right: 20),
      child: FlatButton(

        padding: EdgeInsets.all(10),

        child:  Text("إرسال كلمة مرور جديدة",
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