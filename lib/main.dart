import 'package:flutter/material.dart';
import 'package:sarea_flutter_app/constants/constants.dart';
import 'package:sarea_flutter_app/screens/splash_sceens/acceptance_screen.dart';
import 'package:sarea_flutter_app/screens/bag_screen.dart';
import 'package:sarea_flutter_app/screens/categories_screen.dart';
import 'package:sarea_flutter_app/screens/category_details_screen.dart';
import 'package:sarea_flutter_app/screens/favorite_screen.dart';
import 'package:sarea_flutter_app/screens/home_screen.dart';
import 'package:sarea_flutter_app/screens/item_details_screen.dart';
import 'package:sarea_flutter_app/screens/splash_sceens/otp_screen.dart';
import 'package:sarea_flutter_app/screens/splash_sceens/register_screen.dart';
import 'package:sarea_flutter_app/screens/return_password_screen.dart';
import 'package:sarea_flutter_app/screens/splash_sceens/splash_screen.dart';
import 'package:sarea_flutter_app/screens/splash_sceens/tips_screen.dart';

Future main() async {
  runApp(new MaterialApp(
      title: 'FluterSplashDemo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.pink,
      ),

      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child,
        );
      },
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
       // HOME_SCREEN: (BuildContext context) => HomeScreen(),
        HOME_SCREEN: (BuildContext context) => TipScreen(),
        SPLASH: (BuildContext context) => SplashScreen(),
        ACCEPTANCE_SCREEN: (BuildContext context) => AcceptanceScreen(),
        REGISTER_SCREEN :(BuildContext context) => RegisterScreen(),
        OTP_SCREEN :(BuildContext context) =>  OTPScreen(),
        RETURNPASSWORD_SCREEN :(BuildContext context) =>  ReturnPasswordScreen(),
        TIP_SCREEN :(BuildContext context) =>  TipScreen(),
         CATEGORIES_SCREEN :(BuildContext context) =>  CategoriesScreen(),
        CATEGORY_DETAILS_SCREEN:(BuildContext context) =>  CategoryDetailsScreen(),
        ITEM_DETAILS_SCREEN:(BuildContext context) =>ItemDetailsScreen("ll"),
        FAVORITE_SCREEN:(BuildContext context) =>FavoriteScreen(),
        BAG_SCREEN:(BuildContext context) =>BagScreen(),





      }
  ));
}
