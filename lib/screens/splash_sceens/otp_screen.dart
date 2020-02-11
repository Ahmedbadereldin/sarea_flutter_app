import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sarea_flutter_app/screens/login_screen.dart';
import 'package:flutter_otp/flutter_otp.dart';


class OTPScreen extends StatefulWidget {
  @override
  _OTPScreen createState() => new _OTPScreen();
}

class _OTPScreen extends State<OTPScreen>{

  int count = 0;

  String phoneNum;

  TextEditingController controller1 = new TextEditingController();
  TextEditingController controller2 = new TextEditingController();
  TextEditingController controller3 = new TextEditingController();
  TextEditingController controller4 = new TextEditingController();


  TextEditingController currController = new TextEditingController();

  final FocusNode _Focus1 = FocusNode();
  final FocusNode _Focus2 = FocusNode();
  final FocusNode _Focus3 = FocusNode();
  final FocusNode _Focus4 = FocusNode();

  @override
  void dispose() {
    super.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currController = controller1;

  }

  @override
  Widget build(BuildContext context) {


    List<Widget> widgetList = [
      MyTextField(controller1,controller2 , _Focus1,_Focus2)
      ,
      MyTextField( controller2,controller3,_Focus2,_Focus3)
      ,
      MyTextField( controller3,controller4, _Focus3 ,_Focus4)
      ,
      MyTextField( controller4,controller4 ,_Focus4,_Focus4)
    ];

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
        body: ListView(
              children: <Widget>[
                Column(
                    children: <Widget>[

                Image.asset("assets/images/small_logo.png")
                ,
                Text("إدخال الرمز",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"Cairo"
                      , color: Color(0xFFA02448) ,
                      fontSize: 24

                      // fontWeight: FontWeight.w500
                    )
                    )),

                SizedBox(
                  height: 20,
                )
                ,
        Container(
          width: MediaQuery
                  .of(context)
                  .size
                  .width*2/3,
          margin: EdgeInsets.only(left: 20, right: 20),
                child:
                Text(" أدخل الرمز؛ أرسل إليك عبر الرسائل القصيرة إلى الرقم($phoneNum) ",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: (TextStyle (fontFamily:"Cairo"
                      , color: Color(0xFFA02448) ,
                      fontSize: 14

                    )
                    ))
                    )
                        ,


                      Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children
                              :
                          <Widget>[
                            GridView.count (
                                crossAxisCount:
                                4,
                                mainAxisSpacing: 10.0,
                                shrinkWrap: true,
                                primary: false,
                                scrollDirection: Axis.vertical,
                                children: List < Container>.generate
                                  (
                                    4, (int index) => Container(
                                    child: widgetList[index])
                                )
                            ),
                          ]
                      ),


                      Text("إعادة إرسال بعد $countثانية " ,
                          textAlign: TextAlign.center,
                          textDirection: TextDirection.rtl,
                          style: (TextStyle (fontFamily:"Cairo"
                            , color: Color(0xFFA02448) ,
                            fontSize: 14
                            ,
                            // fontWeight: FontWeight.w500
                          )
                          )),

                      SizedBox(height: 20)
                      ,


                      myButton()


                     ]
                    )
                    ]
                        )

                       );


  }

  void matchOtp() {
    showDialog(context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Successfully"),
            content: Text("Otp matched successfully."),
            actions: <Widget>[IconButton(
                icon: Icon(Icons.check), onPressed: () {
              Navigator.of(context).pop();
            })
            ],);
        }
        );
  }
  void inputTextToField(String str) {
    //Edit first textField
    if (currController == controller1) {
      setState(() {
        controller1.text = "\u{25CF}";
        currController = controller2;
      });
    }

    //Edit second textField
    else if (currController == controller2) {
      setState(() {
        controller2.text = "\u{25CF}";
        currController = controller3;

      });
    }

    //Edit third textField
    else if (currController == controller3) {
     setState(() {
       controller3.text = "\u{25CF}";
       currController = controller4;

     });
    }

    else if (currController == controller4) {
      setState(() {
        controller4.text = "\u{25CF}";//str
        currController = controller4;

      });
    }
  }

  void deleteText() {
    if (currController.text.length == 0) {

    }
    else {
     setState(() {
       currController.text = "";
       currController = controller3;

     });
      return;
    }

    if (currController == controller1) {
     setState(() {
       controller1.text = "";

     });
    }
    else if (currController == controller2) {
     setState(() {
       controller1.text = "";
       currController = controller1;

     });
    }
    else if (currController == controller3) {
      setState(() {
        controller2.text = "";
        currController = controller2;

      });
    }
    else if (currController == controller4) {
      setState(() {
        controller3.text = "";
        currController = controller3;
      });
    }

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

        child:  Text("تأكيد",
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
            return LoginScreen() ;
          }));
        },


      ),


    );
  }




  Widget MyTextField(TextEditingController controller ,TextEditingController nextController ,
  FocusNode focusNode ,FocusNode nextFocusNode) {


    return   Padding(
      padding: const EdgeInsets.only(right: 2.0, left: 2.0), 
      child: new Container(

        margin: EdgeInsets.all(12),
          decoration: new BoxDecoration (
            color: controller.text ==""? Colors.white: Color(0xffF4EFF0),
           shape: BoxShape.circle,
            border: Border.all(color: Color(0xFFA22447),width: 2)


          ),
          alignment: Alignment.center,
          child: Theme(
            data: ThemeData(
              cursorColor: Color(0xFFA22447),
              primaryColor: Colors.transparent
            ),
            child: new TextField(
                keyboardType:  TextInputType.number,
              textInputAction: (currController== controller4 && nextController ==controller4)?
              TextInputAction.done:TextInputAction.next ,

              autofocus: true,
              focusNode: focusNode,
              onSubmitted:(term){
                setState(() {
                 if(controller.text != "") {
                   controller.text = "\u{2B24}";
                   currController = nextController;

                   focusNode.unfocus();
                   FocusScope.of(context).requestFocus(nextFocusNode);
                 }

                });


              } ,
//            onEditingComplete: (){
//              setState(() {
//                controller.text = "\u{2B24}";
//                currController = nextController;
//                focusNode.unfocus();
//                FocusScope.of(context).requestFocus(nextFocusNode);
//              });
//
//            },




              inputFormatters: [
                LengthLimitingTextInputFormatter(1),
              ],
              controller: controller,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24.0, color: Color(0xFFA22447)),

            ),
          )

      ),
    );
  }












  TextInputType MyKeyboard(){

    Column(
      mainAxisSize:
      MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[

        new Container(
          child
              : Padding(
            padding: const EdgeInsets.only(
                left: 8.0, top: 16.0, right:
            8.0, bottom: 0.0),
            child: Row
              (
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize
                  .min,
              children: <Widget>[

                MaterialButton
                  (onPressed: () {
                  inputTextToField("1");
                }
                  , child: Text("1", style
                      : TextStyle(fontSize: 25.0, fontWeight: FontWeight
                      .w400), textAlign: TextAlign.center)
                  ),

                MaterialButton(onPressed: () {
                  inputTextToField("2");
                }
                  , child: Text("2", style
                      : TextStyle(fontSize: 25.0, fontWeight: FontWeight
                      .w400), textAlign: TextAlign.center)
                  ),

                MaterialButton(onPressed: () {
                  inputTextToField("3");
                }
                  , child: Text("3", style
                      : TextStyle(fontSize: 25.0, fontWeight: FontWeight
                      .w400), textAlign: TextAlign.center)
                  ),
              ],
            ),
          ),
        ),

        new Container(
          child: Padding(
            padding:
            const EdgeInsets.only(left: 8.0, top
                : 4.0, right: 8.0, bottom: 0.0
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.
              start,
              mainAxisSize: MainAxisSize.min,
              children:
              <Widget>[
                MaterialButton(onPressed: () {
                  inputTextToField("4");
                }
                  , child: Text("4", style
                      : TextStyle(fontSize: 25.0, fontWeight: FontWeight
                      .w400), textAlign: TextAlign.center)
                  ),

                MaterialButton(onPressed: () {
                  inputTextToField("5");
                }
                  , child: Text("5", style
                      : TextStyle(fontSize: 25.0, fontWeight: FontWeight
                      .w400), textAlign: TextAlign.center)
                  ,),

                MaterialButton(onPressed: () {
                  inputTextToField("6");
                }
                  , child: Text("6", style
                      : TextStyle(fontSize: 25.0, fontWeight: FontWeight
                      .w400), textAlign: TextAlign.center)
                  ,),
              ],
            ),
          ),
        ),

        new Container(
          child: Padding(
            padding:
            const EdgeInsets.only(left: 8.0, top
                : 4.0, right: 8.0, bottom: 0.0
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.
              start,
              mainAxisSize: MainAxisSize.min,
              children:
              <Widget>[
                MaterialButton(onPressed: () {
                  inputTextToField("7");
                }
                  , child: Text("7", style
                      : TextStyle(fontSize: 25.0, fontWeight: FontWeight
                      .w400), textAlign: TextAlign.center)
                  ),

                MaterialButton(onPressed: () {
                  inputTextToField("8");
                }
                  , child: Text("8", style
                      : TextStyle(fontSize: 25.0, fontWeight: FontWeight
                      .w400), textAlign: TextAlign.center)
                  ),

                MaterialButton(onPressed: () {
                  inputTextToField("9");
                }
                  , child: Text("9", style
                      : TextStyle(fontSize: 25.0, fontWeight: FontWeight
                      .w400), textAlign: TextAlign.center)
                  ),
              ],
            ),
          ),
        ),

        new Container(
          child: Padding(
            padding:
            const EdgeInsets.only(left: 8.0, top
                : 4.0, right: 8.0, bottom: 0.0
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.
              start,
              mainAxisSize: MainAxisSize.min,
              children:
              <Widget>[
                MaterialButton(onPressed: () {
                  deleteText();
                }
                    , child:Text("\u{232b}",textScaleFactor:1.5 )),
                MaterialButton(onPressed: () {
                  inputTextToField("0");
                }
                  , child: Text("0", style
                      : TextStyle(fontSize: 25.0, fontWeight: FontWeight
                      .w400), textAlign: TextAlign.center)
                  ),

                MaterialButton(onPressed: () {
                  matchOtp();
                }
                    , child: Icon(Icons.check)),
              ],
            ),
          ),
        ),
      ],
    );
  }


}


