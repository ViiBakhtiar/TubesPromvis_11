// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/items/rekomendasi_card_vertikal.dart';


class PostinganInvestorScreen extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
                child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Column( //column 1
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [ 
                      Container(
                        height: 100,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: double.maxFinite,
                                margin: EdgeInsets.only(left: 30, right: 30),
                                padding: EdgeInsets.only(top:30),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    bottom: BorderSide(width: 2, color: Colors.grey),
                                  ),
                                ),

                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // TEXT NAME (ganti pake $_name nanti)
                                    Container(
                                      width: 170,
                                      margin: EdgeInsets.only(top:12 , bottom: 12),
                                      child: 
                                        Text(
                                              "List UMKM",
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.blueAccent, fontFamily: 'Poppins'),    
                                        ),
                                    ),
                                    Spacer(),
                                    //IMAGE NOTIFICATION YELLOW
                                    // Container(padding: const EdgeInsets.fromLTRB(0, 10, 5, 10),
                                    //   child: 
                                    //   InkWell(
                                    //     onTap: () {
                                    //       // Navigator.pop(context);
                                    //     }, // Image tapped
                                    //     splashFactory: InkSparkle.splashFactory,
                                    //     splashColor: Colors.black, // Splash color over image
                                    //     child: Ink.image(
                                    //       fit: BoxFit.fitWidth, // Fixes border issues
                                    //       width: 20,
                                    //       height: 25,
                                    //       image: AssetImage(
                                    //         'assets/images/img_arrowleft.png',
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 15, 15, 15),
                                      child:
                                      Image.asset('assets/images/img_chat.png',
                                      width: 25, height: 25, fit: BoxFit.fill,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                      child:
                                      Image.asset('assets/images/img_filter.png',
                                      width: 25, height: 25, fit: BoxFit.fill,),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  
                    // REKOMENDASI CARD
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 590,
                        child: ListView.separated(
                          padding: EdgeInsets.only(
                            left: 35,
                            top: 10,
                            bottom: 10,
                            
                          ),
                          scrollDirection: Axis.vertical,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 16);
                          },
                          // set ada berapa card (isi card ganti di rekomendasi_card.dart)
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return RekomendasiCardVertikal();
                          },
                        ),
                      ),
                    ),    


                    
                  
                  ]
              )
            )
          )
      ));
  }
}