import 'package:flutter/material.dart';
import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddAddressScreen extends StatefulWidget {

  @override
  _AddAddressScreen createState() =>  _AddAddressScreen();


}

class _AddAddressScreen extends State<AddAddressScreen> {


  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);


  Icon backIcon = Icon(Icons.arrow_forward_ios, color: Color(0xFFA02448));


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xffF6F5F5),

      appBar: AppBar(
          flexibleSpace: Flex(direction: Axis.vertical,),
          title:
          Text("إضافة عنوان",
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