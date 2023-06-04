// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/detail_umkm_tentang_investor_screen.dart';

class DetailUmkmRiwayatInvestorScreen extends StatelessWidget {

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
                          // LEFT ARROW NAV
                          Padding(padding: const EdgeInsets.fromLTRB(25, 0, 20, 0),
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              }, // Image tapped
                              splashColor: Colors.white70, // Splash color over image
                              child: Ink.image(
                                fit: BoxFit.fill, // Fixes border issues
                                width: 10,
                                height: 20,
                                image: AssetImage(
                                  'assets/images/img_arrowleft.png',
                                ),
                              ),
                            ),
                          ),

                          // TEXT DETAIL UMKM
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: 
                              Text(
                                "Detail UMKM",
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black,
                                  fontFamily: 'Poppins'
                                ),    
                              ),
                          ),
                        ]
                      ),

                      Container(
                        height: 620,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(top: 20, bottom: 70),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,     
                          children: <Widget>[
                           Container(
                              child: Column(
                                  children: [ Row(children: [
                                    //IMAGE PROFILE PIC
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(60, 0, 25, 35),
                                      child:
                                      Image.asset('assets/images/img_pic_siti.png',
                                      width: 100, height: 100, fit: BoxFit.fill,),
                                    ),

                                    Container(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Column(
                                        children: [ Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 95, bottom: 10),
                                              child: Text(
                                                "Siti Cahyani",
                                              // textAlign: TextAlign.left,
                                              style: const TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
                                              ),
                                            ),
    
                                            Padding(
                                              padding: const EdgeInsets.only(right: 60, bottom: 10),
                                              child: Text(
                                                "Modal Jual Buah",
                                              // textAlign: TextAlign.left,
                                              style: const TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w500),
                                              ),
                                            ),
                                            
                                            Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(bottom: 35),
                                                      child:
                                                      Image.asset('assets/images/img_location.png',
                                                      width: 10, height: 13, fit: BoxFit.fill,),
                                                    ),
                                                    
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 5, right: 60, bottom: 35),
                                                      child: Text(
                                                        "Bandung, Jawa Barat",
                                                      // textAlign: TextAlign.left,
                                                      style: const TextStyle(fontSize: 10, color: Colors.grey, fontFamily: 'Poppins'),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        )],
                                    ),
                                  )],)
                                ]
                              ),
                            ),
                                    
                            // MAKSIMUM PENDANAAN, BAGI HASIL, TENOR
                            Container(
                              padding: const EdgeInsets.only(right: 40, bottom: 15),
                              child: Column(
                                  children: [ Row(children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 50),
                                      height: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.horizontal(),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text.rich(
                                          TextSpan(children: [
                                            TextSpan(
                                              text: 'Maksimum\nPendanaan\n\n', 
                                              style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold, height: 1, color: Colors.black)
                                            ),
                                            TextSpan(
                                              text: 'Rp 5.000.000', 
                                              style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.normal, height: 1, color: Colors.black),
                                            ),
                                          ]),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.horizontal(),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text.rich(
                                          TextSpan(children: [
                                            TextSpan(
                                              text: 'Bagi Hasil\n\n\n', 
                                              style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold, height: 1, color: Colors.black)
                                            ),
                                            TextSpan(
                                              text: '       12%', 
                                              style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.normal, height: 1, color: Colors.black),
                                            ),
                                          ]),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 85,
                                      height: 55,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.horizontal(),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text.rich(
                                          TextSpan(children: [
                                            TextSpan(
                                              text: '   Tenor\n\n\n',
                                              style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.bold, height: 1, color: Colors.black)
                                            ),
                                            TextSpan(
                                              text: '50 Minggu', 
                                              style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.normal, height: 1, color: Colors.black),
                                            ),
                                          ]),
                                        ),
                                      ),
                                    ),

                                  ],)
                                ]
                              ),
                            ),

                            // GREY LINE
                            Container(
                              decoration: BoxDecoration(
                                // color: Colors.white,
                                border: Border(
                                  bottom: BorderSide(width: 2, color: Colors.grey),
                                ),
                              ),
                            ),
                            
                            // TENTANG UMKM & RIWAYAT
                            Container(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                  children: [ Row(children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: Colors.black,
                                          side: BorderSide(color: Colors.yellow),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(90, 85))),
                                          padding: const EdgeInsets.only(left: 40, top: 9, right: 40, bottom: 9),
                                          textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                                        ),
                                        onPressed: () { // routing on pressed Daftar
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                            return DetailUmkmTentangInvestorScreen();
                                          }));
                                        }, 
                                        child: 
                                          const Text("Tentang UMKM"),
                                      ) ,
                                    ), 
                                    Spacer(),
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: Colors.black,
                                          backgroundColor: Colors.yellow,
                                          side: BorderSide(color: Colors.yellow),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.elliptical(90, 85)),
                                            ),
                                          padding: const EdgeInsets.only(left: 40, top: 9, right: 40, bottom: 9),
                                          textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                                        ),
                                        onPressed: () { // routing on pressed TENTANG UMKM
                                                  
                                        }, 
                                        child: 
                                          const Text("Riwayat"),
                                      ) ,
                                    ), 
                                  ],)
                                ]
                              ),
                            ),

                            // RIWAYAT PENDANAAN SEBELUMNYA
                            Container(
                              padding: const EdgeInsets.only(left:20, right: 20, top: 5),
                              child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Riwayat Pendanaan Sebelumnya',
                                maxLines: 3,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blueAccent,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),  
                            ),

                            // PENDANAAN KE, MAKSIMAL PENDANAAN
                            Container(
                              padding: const EdgeInsets.only(left:5, right: 5, top: 20, bottom: 5),
                              child : Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: double.maxFinite,
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  margin: EdgeInsets.only(bottom: 100, top: 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                child: Table(
                                  border: TableBorder.all(color: Colors.transparent),
                                  children: [
                                    TableRow(
                                      children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 5, bottom: 5),
                                        child:
                                        Text(
                                          'Pendanaan ke',
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontFamily: 'Poppins'))),
                                      Container(
                                        padding: EdgeInsets.only(top: 5, bottom: 5),
                                        child:
                                        Text(
                                          'Maksimal Pendanaan',
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black,
                                                  fontFamily: 'Poppins'))),
                                    ]),

                                    TableRow(children: [
                                      Text('1',
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                              fontFamily: 'Poppins'),
                                      ),
                                      Text('Rp 500.000',
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                              fontFamily: 'Poppins'),),
                                    ]),

                                    // TABEL KOSONG (SEBAGAI SPACER)
                                    TableRow(children: [
                                      Text('',
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontFamily: 'Poppins'
                                      ),),
                                      Text('', 
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontFamily: 'Poppins'),),
                                    ]),
                                    
                                    // TANGGAL MULAI DAN TANGGAL SELESAI
                                    TableRow(
                                      children: [
                                      Container(
                                        padding: EdgeInsets.only(top: 5, bottom: 5),
                                        child:
                                        Text(
                                          'Tanggal Mulai',
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontFamily: 'Poppins'))),
                                      Container(
                                        padding: EdgeInsets.only(top: 5, bottom: 5),
                                        child:
                                        Text(
                                          'Tanggal Selesai',
                                          textAlign: TextAlign.right,
                                          style: const TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black,
                                                  fontFamily: 'Poppins'))),
                                    ]),

                                    TableRow(children: [
                                      Text('15/06/2021',
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                              fontFamily: 'Poppins'),
                                      ),
                                      Text('18/05/2022',
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                              fontFamily: 'Poppins'),),
                                    ]),
                                  ],
                                ),
                              ),
                              ),
                            ),
                                    
                            // BUTTON MULAI DANAI
                            Container(
                              padding: const EdgeInsets.only(left:20, right: 10, top: 10),
                              child: Align(
                              alignment: Alignment.topCenter,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.blueAccent,
                                  backgroundColor: Colors.white,
                                  side: BorderSide(color: Colors.blueAccent),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(90, 85))),
                                  padding: const EdgeInsets.only(left: 40, top: 9, right: 40, bottom: 9),
                                  textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                                ),
                                onPressed: () { // routing on pressed MULAI DANAI
                                          
                                }, 
                                child: 
                                  const Text("Mulai Danai"),
                              ) ,
                            )     
                            ),   
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