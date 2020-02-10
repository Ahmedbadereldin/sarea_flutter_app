import 'package:flutter/material.dart';
import 'package:sarea_flutter_app/screens/login_screen.dart';
import 'package:sarea_flutter_app/screens/otp_screen.dart';
import 'package:sarea_flutter_app/screens/return_password_screen.dart';



class RegisterScreen extends StatefulWidget {
  @override
  _Register_Screen createState() => new _Register_Screen();
}

class _Register_Screen extends State<RegisterScreen>{

  TextEditingController username = TextEditingController();
  TextEditingController useremail = TextEditingController();
  TextEditingController usermobile = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                Image.asset("assets/images/small_logo.png")
                    ,
                    Text("التسجيل",
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                        style: (TextStyle (fontFamily:"Cairo"
                          , color: Color(0xFFA02448) ,
                          fontSize: 24
                          ,
                          // fontWeight: FontWeight.w500
                        )
                        )),

                SizedBox(
                  height: 20,
                )
                ,


                MyTextField("اسم المستخدم" , username , 0)
                ,
                MyTextField("البريد الالكتروني", useremail,1)
                ,
                MyTextField("الموبايل" , usermobile,2)
                ,
                MyTextField("كلمة المرور" , password,0)
                ,
                SizedBox(height: 20)
                ,


                myButton()
                ,
                SizedBox(
                  height: 20
                ),

                Row(
                  children: <Widget>[
                    Expanded(
                      child:  Container(
                          margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                          child: Divider(
                            color: Color(0xFFA02448),
                            height: 36,
                          )),
                    ),
                    Text("أو" ,
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                        style: (TextStyle (fontFamily:"SF Pro"
                          , color: Color(0xFFA02448) ,
                          fontSize: 14
                          ,
                          // fontWeight: FontWeight.w500
                        )
                        )),
                    Expanded(
                      child:  Container(
                          margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                          child: Divider(
                            color: Color(0xFFA02448),
                            height: 36,
                          )),
                    ),
                  ],
                )
                ,

                Text("قم بالتسجيل من خلال",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"SF Pro"
                      , color: Color(0xFFA02448) ,
                      fontSize: 14
                      ,
                      // fontWeight: FontWeight.w500
                    )
                    ))
                ,
                SizedBox(
                  height: 10
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                        child: Image.asset("assets/images/ic_gmail.png"))
                    ,
                    SizedBox(width: 20),

                    InkWell(
                      child: Image.asset("assets/images/ic_facebook.png"))

                  ],
                )

                ,

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[

                    FlatButton(
                      child:
                      Text("نسيت كلمة المرور",
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
                        return ReturnPasswordScreen();
                      }));
                    } ,

                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Text("هل لديك حساب؟",
                            textDirection: TextDirection.rtl,
                            style: (TextStyle (fontFamily:"Cairo"
                              , color: Color(0xFFA02448) ,
                              fontSize: 12
                              ,
                              // fontWeight: FontWeight.w500
                            )
                            )),

                    FlatButton(
                      materialTapTargetSize:MaterialTapTargetSize.shrinkWrap,
                      child:
                      Text("سجل دخولك الان",
                          textDirection: TextDirection.rtl,
                          style: (TextStyle (fontFamily:"Cairo"
                            , color: Color(0xFFA02448) ,
                            fontSize: 12
                            ,
                            // fontWeight: FontWeight.w500
                          )
                          )), onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoginScreen();
                      }));

                    } ,

                    )
    ]
    )


                  ],
                )

                ,
                SizedBox(
                  height: 25,
                )

              ],
            )
          ],
        )
    );
  }


  Widget myButton() {
    return  Container(
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
         // sendOtp('958347XXXX');
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return OTPScreen() ;
          }));
        },


      ),


    );
  }




  Widget MyTextField(String str ,TextEditingController controller , int i) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
        height: 50
        ,
      margin: EdgeInsets.only(left: 30, right: 30 ),
      padding:EdgeInsets.only(top: 1, bottom: 1) ,
      child:

      TextField(
          keyboardType:  i ==0 ? TextInputType.text : (i == 1?TextInputType.emailAddress :  TextInputType.number) ,
         cursorColor: Color(0xFFA02448),
         controller: controller,
        textAlign: TextAlign.center,
        onChanged: (String value) {
          setState(() {
            //   user.name = value;
          });

        },

        decoration: InputDecoration(

          filled: true,
          fillColor: Color(0xFFA22447).withOpacity(.04),
          hintText: str,
          hintStyle: TextStyle(
              color: Color(0xFFA02448),
              fontFamily: "Cairo",
              fontSize:16 ),

          border: InputBorder.none,



        ),





      )


    );
  }

}