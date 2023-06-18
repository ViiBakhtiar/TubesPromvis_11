// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, sized_box_for_whitespace 

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BeritaCard extends StatelessWidget {
  BeritaCard();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.topCenter,
        child:
        Container(
            height: 160,
            width: 160,
          child:
          InkWell(
            onTap: () {                  
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                //   return ChatInvestorScreen();
                // }));
              },
          child:  
            Stack(
            alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child:
                  Image.asset('assets/images/img_berita_1.png',
                  width: 160, height: 160, fit: BoxFit.fill),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(5),
                    decoration:
                      BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment:
                          MainAxisAlignment.center,
                      children: [
                        Container(
                          width:
                            131,
                          margin: EdgeInsets.only(
                            bottom: 2,
                          ),
                          child: Text(
                            "Switching Reksadana, Ini yang Perlu Diketahui Investor",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white, fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
