import 'package:flutter/material.dart';
import 'package:foodapp/view/addproduct.dart';
// import 'package:foodapp/view/userprofile.dart';
//import 'package:foodapp/view/Splash.dart';
// import 'package:foodapp/view/product.dart';
//import 'package:foodapp/view/Splash.dart';
// import 'package:foodapp/view/productshow.dart';
//import 'package:foodapp/view/login.dart';
//import 'package:foodapp/view/onboarding.dart';
//import 'package:foodapp/view/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddProduct(),
    );
  }
}
