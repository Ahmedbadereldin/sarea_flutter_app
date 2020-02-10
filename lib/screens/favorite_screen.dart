import 'package:flutter/material.dart';
import 'package:sarea_flutter_app/screens/item_details_screen.dart';

class FavoriteScreen extends StatefulWidget {

  @override
  _FavoriteScreen createState() =>  _FavoriteScreen();


}

class _FavoriteScreen extends State<FavoriteScreen> {

  Icon bagIcon =  Icon(Icons.shopping_basket,color: Color(0xFFA02448));
  Icon backIcon = Icon(Icons.arrow_back_ios, color: Color(0xFFA02448));


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffF6F5F5),
        appBar:AppBar(
            title:
            Text("المفضلة",
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
              IconButton( icon:bagIcon, onPressed: () {},),
            ]

        ),
      body:      ListView(
        children:<Widget>[
          SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/6,
            margin: EdgeInsets.only(left: 10,right: 10,top: 10),
            child: Card(

                color: Color(0xffF4EFF0),
                elevation: 0,
                child: ListTile(

                    leading:

                    Hero(
                        tag: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.height/10,
                          height: MediaQuery.of(context).size.height/5,
                          margin: EdgeInsets.only(left: 10,top: 10),
                          color: Colors.white,


                        ) ),

                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[

                        Text("Pizza Altaboon - بيتزا الطابون",textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            style: (TextStyle (fontFamily:"Cairo"
                                , color: Color(0xFFA02448) ,
                                fontSize: 14)
                            )),

                        Text("مطعم بيتزا · مطعم وجبات سريعة",textAlign: TextAlign.right,
                            textDirection: TextDirection.rtl,
                            style: (TextStyle (fontFamily:"Cairo"
                                , color: Colors.black ,
                                fontSize: 12)
                            )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:<Widget>[
                            Text("كابيتال مول",
                                textAlign: TextAlign.right,
                                textDirection: TextDirection.rtl,
                                style: (TextStyle (fontFamily:"Cairo"
                                    , color: Colors.black ,
                                    fontSize: 12)
                                )),
                            Icon(Icons.location_on,color: Color(0xff5BCC47),)
                          ],
                        ),
                      ],),


                    onTap:() {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) {
                        //  return ItemDetailsScreen(item.name);
                        return ItemDetailsScreen("بيتزا الطابون");
                      })
                      );
                    }
                    ,

                    trailing:GestureDetector(
                        child:
                        Icon(Icons.favorite, color: Color(0xFFE5293E)),

                        onTap: (){
                          setState(() {


                          });
                        }
                    )
                )

            ),
          )
        ]
      ),
    );
  }
}
