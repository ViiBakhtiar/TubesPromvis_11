// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(left: 46, right: 46),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                padding: const EdgeInsets.fromLTRB(0, 90, 0, 15),
                child:
                Image.asset('assets/images/img_logo.png',
                width: 284, height: 225, fit: BoxFit.fill,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
