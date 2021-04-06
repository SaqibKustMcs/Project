import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff260707),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    // shape: BoxShape.circle,

                    //   color: Colors.amberAccent[590],
                    ),
                child: Image.asset(
                  'assets/logo1.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
