import 'package:flutter/material.dart';
import 'package:sarea_flutter_app/screens/categories_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => new _HomeScreen();
}

class _HomeScreen extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CategoriesScreen();
  }

}