import 'package:flutter/material.dart';

class ItemDetailsScreen extends StatefulWidget {
  String name;
  @override
  _ItemDetailsScreen createState() =>  _ItemDetailsScreen(name);

  ItemDetailsScreen(this.name);
}

class _ItemDetailsScreen extends State<ItemDetailsScreen> {
  String name;

  Icon backIcon = Icon(Icons.arrow_back_ios, color: Color(0xFFA02448));

  _ItemDetailsScreen(this.name);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar:AppBar(
          title:
            Text(name,
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
            leading: IconButton(icon: backIcon, onPressed: () {
              Navigator.pop(context);
            }),
            actions: <Widget>[
              IconButton( icon:Image.asset("assets/images/bag.png"), onPressed: () {},)

            ]

        )
    );
  }
}
