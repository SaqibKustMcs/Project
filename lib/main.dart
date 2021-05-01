import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseproject/view/addproduct.dart';
import 'package:firebaseproject/view/login.dart';
import 'package:firebaseproject/view/splashscreen.dart';
import 'package:flutter_launcher_icons/android.dart';
//import 'file:///C:/Flutter%20project/firebaseproject/lib/view/login.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
