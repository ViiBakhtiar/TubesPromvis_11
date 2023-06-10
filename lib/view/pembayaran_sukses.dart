// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PembayaranSukses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 51,
            top: 103,
            right: 51,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                      // IMAGE 
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 90, 0, 15),
                        child:
                        Image.asset('assets/images/img_success.png',
                        width: 200, height: 200, fit: BoxFit.cover,),
                      ),
              
              Padding(
                padding: EdgeInsets.only(
                  top: 34,
                ),
                child: Text(
                  "Berhasil",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 11,
                ),
                child: Text(
                  "Kami baru saja mengirimkan uang anda ke",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 2,
                  top: 33,
                ),
                padding: EdgeInsets.only(
                  left: 14,
                  top: 10,
                  right: 14,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.5, 5),
                        blurRadius: 5,
                        color: Colors.grey
                      ),
                    ],
                    borderRadius: BorderRadius.circular(50
                    ),
                  ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                      child: Image.asset('assets/images/img_pic_sari.png',
                      height: 70,
                      width: 70,
                      fit: BoxFit.fill,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 14,
                        top: 7,
                        bottom: 6,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Siti Cahyani",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,

                            ),
                            child: Text(
                              "Modal jualan buah",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 39,
                ),
                child: Text(
                  "Jumlah Transfer",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 12,
                ),
                child: Text(
                  "Rp 500.000",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Mei 25 2023",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 13,
                      ),
                      child: Text(
                        "-",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 13,
                      ),
                      child: Text(
                        "09.48 WIB",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                      ),
                    ),
                  ],
                ),
              ),
          ],),
        ),
        ),
      );
  }

}
