// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables 

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RekomendasiCard extends StatelessWidget {
  RekomendasiCard();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(
            right: 16,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(3, 2),
                blurRadius: 3,
                color: Colors.black.withOpacity(0.3),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // IMAGE PROFILE PIC
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child:
                        Image.asset('assets/images/img_pic_sari.png',
                        width: 70, height: 70, fit: BoxFit.fill,),
                      ),
                      // SARIWATI
                      Container(
                        width:122,
                        margin: EdgeInsets.only(
                          left: 12,
                          bottom: 2,
                        ),
                        child: Text(
                          "Sariwati\nModal Jualan Ayam\nBagi Hasil\n 12%",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 9,
                  top: 18,
                ),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 2, 0),
                        child:
                        Image.asset('assets/images/img_location.png',
                        width: 10, height: 15, fit: BoxFit.fill,),
                      ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5,
                      ),
                      child: Text(
                        "Cirebon, Jawa Barat",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black26, fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                ),
                child: Row(
                  children: [
                    Container(
                      width: 
                        110,
                      padding: EdgeInsets.only(
                        left: 20,
                        top: 3,
                        right: 10,
                        bottom: 5,
                      ),
                      decoration: 
                        BoxDecoration(
                          color: Colors.blueAccent.shade700,
                          border: Border.all(
                            color: Colors.blueAccent.shade700,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                      child: Text(
                        "Mulai Danai",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'Poppins'),
                      ),
                    ),
                    Container(
                      width: 
                        110,
                      padding: EdgeInsets.only(
                        left: 40,
                        top: 3,
                        right: 20,
                        bottom: 5,
                      ),
                      decoration: 
                      BoxDecoration(
                          border: Border.all(
                            color: Colors.blueAccent.shade700,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      child: Text(
                        "Chat",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.blueAccent, fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
