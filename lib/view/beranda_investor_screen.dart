// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class BerandaInvestorScreen extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
                child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                    child: Column( //column 1
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [ 
                    Container(
                        height: 193,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: double.maxFinite,
                                margin: EdgeInsets.only(bottom: 30),
                                
                                padding: EdgeInsets.only(
                                  left: 33,
                                  top: 44,
                                  right: 33,
                                  bottom: 44,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent.shade700,
                                  boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0.5, 5),
                                        blurRadius: 5,
                                        color: Colors.grey,
                                      ),
                                  ],
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                  ),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //IMAGE PROFILE PIC
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child:
                                      Image.asset('assets/images/img_pic_ujang.png',
                                      width: 60, height: 60, fit: BoxFit.fill,),
                                    ),
                                    // TEXT HI ... NAME (ganti pake $_name nanti)
                                    Container(
                                      width: 66,
                                      margin: EdgeInsets.only(left: 20, bottom: 12),
                                      child: 
                                        Text(
                                              "Hi,\nUjang!",
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.w600,
                                                      color: Colors.white,
                                                      fontFamily: 'Poppins'),    
                                        ),
                                    ),
                                    Spacer(),
                                    //IMAGE PROFILE PIC
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 15, 5, 10),
                                      child:
                                      Image.asset('assets/images/img_notifyellow.png',
                                      width: 22, height: 25, fit: BoxFit.fill,),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            
                      
                          ],
                        ),
                      ),
                        
                        ]// children column 2
              )
            )
        )
      )
    );
  }

// routes (sementara)
  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';
}