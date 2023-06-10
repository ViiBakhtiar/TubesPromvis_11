// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/portofolio2_investor_screen.dart';

class Portofolio1InvestorScreen extends StatefulWidget {

  @override
  State<Portofolio1InvestorScreen> createState() => _Portofolio1InvestorScreenState();
}

class _Portofolio1InvestorScreenState extends State<Portofolio1InvestorScreen> {

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
                        // Aktivitas
                        Padding(padding: EdgeInsets.fromLTRB(26,10, 50, 20),
                        child: 
                          Text(
                              "Portofolio",
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

                                            // BUTTON TAB PROGRESS PENDANAAN & DAFTAR UMKM
                      Container(
                        padding: const EdgeInsets.only(left: 25, right: 25, top: 0, bottom: 20),
                        child: Column(
                            children: [ 
                              Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                              Align(
                                alignment: Alignment.center,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    alignment: Alignment.center,
                                    backgroundColor: Colors.blue.shade700,
                                    side: BorderSide(color: Colors.blue.shade700),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
                                    padding: const EdgeInsets.only(left: 40, top: 5, right: 40, bottom: 5),
                                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold ,fontFamily: 'Poppins'),
                                  ),
                                  
                                  onPressed: () { // routing on pressed PROGRESS PENDANAAN
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    //   return Portofolio1InvestorScreen();
                                    // }));
                                  }, 
                                  child: 
                                    const Text("Progress\nPendanaan", textAlign: TextAlign.center,),
                                ) ,
                              ), 
                              Align(
                                alignment: Alignment.center,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.blue.shade400,
                                    side: BorderSide(color: Colors.blue.shade400),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
                                    padding: const EdgeInsets.only(left: 55, top: 5, right: 55, bottom: 5),
                                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold , fontFamily: 'Poppins'),
                                  ),
                                  onPressed: () { // routing on pressed DAFTAR UMKM
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                      return Portofolio2InvestorScreen();
                                    }));
                                  }, 
                                  child: 
                                    const Text("Daftar\nUMKM", textAlign: TextAlign.center,),
                                ) ,
                              ), 
                            ],)
                          ]
                        ),
                      ),
                      // POKOK  
                      Container(
                        height: 250,
                        width: 374,
                        margin: EdgeInsets.only(left: 25, top: 10, right: 20, bottom:20),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            //box shadow
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 240,
                                width:345,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 0),
                                      blurRadius: 0,
                                      color: Colors.blue.shade700,
                                    ),
                                    BoxShadow(
                                      offset: Offset(3, 8),
                                      blurRadius: 3,
                                      color: Colors.grey.withOpacity(0.2),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),

                            //card
                            Align(
                              alignment: Alignment.center,
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(10),
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  height: 340,
                                  width: 360,
                                  padding: EdgeInsets.only(
                                    left: 25,
                                    right: 20,
                                    bottom: 12,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Pokok",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,fontFamily: 'Poppins'),
                                        ),
                                      ),
                                      Row(children: [
                                        Container(
                                          width:
                                            100,
                                          margin: EdgeInsets.only(
                                            left: 0,
                                            top: 30,
                                          ),
                                          child: Text(
                                            "Pokok Diterima\nRp 500.000",
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal ,fontFamily: 'Poppins'),
                                          ),
                                        ),

                                        Container(
                                          width:
                                            103,
                                          margin: EdgeInsets.only(
                                            left: 71,
                                            top: 30,
                                          ),
                                          child: Text(
                                            "Sisa Pokok\nRp 80.000",
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal ,fontFamily: 'Poppins'),
                                          ),
                                        ),
                                      ],),
                                      
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 70,
                                          top: 30,
                                        ),
                                        child: Text(
                                          "Total Pendanaan Aktif\nRp580.000",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal ,fontFamily: 'Poppins'),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              )
                            )
                          ]
                        ),
                      ),

                      // PROYEKSI MARGIN
                      Container(
                        height: 250,
                        width: 374,
                        margin: EdgeInsets.only(left: 25, top: 10, right: 20, bottom:20),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            //box shadow
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 240,
                                width:345,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 0),
                                      blurRadius: 0,
                                      color: Colors.yellow,
                                    ),
                                    BoxShadow(
                                      offset: Offset(3, 8),
                                      blurRadius: 3,
                                      color: Colors.grey.withOpacity(0.2),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),

                            //card
                            Align(
                              alignment: Alignment.center,
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(10),
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  height: 340,
                                  width: 360,
                                  padding: EdgeInsets.only(
                                    left: 25,
                                    right: 20,
                                    bottom: 12,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Proyeksi Margin",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold ,fontFamily: 'Poppins'),
                                        ),
                                      ),
                                      Row(children: [
                                        Container(
                                          width:
                                            120,
                                          margin: EdgeInsets.only(
                                            left: 0,
                                            top: 30,
                                          ),
                                          child: Text(
                                            "Margin Diterima\nRp 54.721",
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal ,fontFamily: 'Poppins'),
                                          ),
                                        ),

                                        Container(
                                          width:
                                            100,
                                          margin: EdgeInsets.only(
                                            left: 50,
                                            top: 30,
                                          ),
                                          child: Text(
                                            "Sisa Margin\nRp 5.100",
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal ,fontFamily: 'Poppins'),
                                          ),
                                        ),
                                      ],),
                                      
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 70,
                                          top: 30,
                                        ),
                                        child: Text(
                                          "Total Proyeksi Margin\nRp59.821",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal ,fontFamily: 'Poppins'),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              )
                            )
                          ]
                        ),
                      ),
              ]
            )
          )    
        ),
      ),
    ); 
  }
}