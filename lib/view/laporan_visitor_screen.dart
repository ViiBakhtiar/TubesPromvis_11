// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LaporanVisitorScreen extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
                child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.only(left: 0, top: 25, right: 0, bottom: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [ Row(
                        children:[
                        // PORTOFOLIO
                        Padding(padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                        child: 
                          Text(
                              "Laporan Keuangan",
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                      fontFamily: 'Poppins'),    
                          ),
                        ),
                        ]
                      ),

                        Container(
                                height: 500,
                                width: double.maxFinite,
                                margin: EdgeInsets.only(left:35, bottom: 70, top:35, right:35),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 0),
                                        blurRadius: 4,
                                        color: Colors.grey.withOpacity(0.2),
                                      ),
                                      BoxShadow(
                                        offset: Offset(8, 0),
                                        blurRadius: 16,
                                        color: Colors.grey.withOpacity(0.4),
                                      ),
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                ),

                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: 
                                      Image.asset('assets/images/img_error.png',
                                      width: 235, height: 240, fit: BoxFit.cover,)
                                    ),
                                    
                                    // Daftarkan
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: 
                                      Container(
                                      width: 370,
                                      margin: EdgeInsets.only(top: 20, bottom: 20),
                                      child: 
                                        Text(
                                              "Daftarkan dirimu\nsebagai member atau investor",
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),    
                                        ),
                                      ),
                                    ),
                                    
                                    
                                    // BUTTON DAFTAR
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                          foregroundColor: Colors.blue,
                                          side: BorderSide(color: Colors.blue),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(90, 85))),
                                          padding: const EdgeInsets.only(left: 40, top: 9, right: 40, bottom: 9),
                                          textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                                        ),
                                      onPressed: () { // routing on pressed Daftar
                                        
                                      }, 
                                      child: 
                                      const Text("Daftar"),
                                      ) ,
                                    )
                                    
                                  ],
                                ),
                              ),
                      ]    
              ),
            ),
          ),
        ),
      );
  }
}
