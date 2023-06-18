// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/postingan_member_riwayat_screen.dart';
import 'package:frontend_tubes/view/postingan_member_baru_screen.dart';

class PostinganMemberTentangScreen extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
                child: Container(
                    height: 830,
                    width: double.maxFinite,
                    padding: const EdgeInsets.only(top: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [ Row(
                        children:[
                        // PROFIL UMKM-MU!
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 50, 0),
                          child: 
                            Text(
                              "Profil UMKM-mu!",
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                              fontFamily: 'Poppins'),    
                            ),
                        ),
                        // NEW POST
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 5, 10),
                          child:
                            Image.asset('assets/images/img_newpost.png',
                            width: 22, height: 25, fit: BoxFit.fill,),
                        ),
                        Spacer(),
                        // CHAT
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 5, 10),
                          child:
                            Image.asset('assets/images/img_chat.png',
                            width: 22, height: 25, fit: BoxFit.fill,),
                        ),
                        Spacer(),
                        // NOTIFY
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 20, 10),
                          child:
                            Image.asset('assets/images/img_notifyellow.png',
                            width: 22, height: 25, fit: BoxFit.fill,),
                        ),
                        ]
                      ),


                      // BLUE CONTAINER
                      Container(
                        padding: const EdgeInsets.only(),
                        height: 735,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(top:20),
                        decoration: BoxDecoration(
                        color: Colors.blueAccent.shade700,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,     
                          children: <Widget>[
                            Container(
                              child: Column(
                                  children: [ Row(children: [
                                    //IMAGE PROFILE PIC
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(60, 0, 50, 35),
                                      child:
                                      Image.asset('assets/images/img_pic_siti.png',
                                      width: 95, height: 95, fit: BoxFit.fill,),
                                    ),

                                    Container(
                                      child: Column(
                                        children: [ Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 60, bottom: 15),
                                              child: Text(
                                                "Siti Cahyani",
                                              // textAlign: TextAlign.left,
                                              style: const TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'Poppins'),
                                              ),
                                            ),
    
                                            Padding(
                                              padding: const EdgeInsets.only(right: 60, bottom: 15),
                                              child: Text(
                                                "Modal Jual Buah",
                                              // textAlign: TextAlign.left,
                                              style: const TextStyle(fontSize: 14, color: Colors.white, fontFamily: 'Poppins'),
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
                                                      width: 10, height: 15, fit: BoxFit.fill,),
                                                    ),
                                                    
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 5, right: 60, bottom: 35),
                                                      child: Text(
                                                        "Bandung, Jawa Barat",
                                                      // textAlign: TextAlign.left,
                                                      style: const TextStyle(fontSize: 10, color: Colors.white, fontFamily: 'Poppins'),
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
                              padding: const EdgeInsets.only(left:20, right: 20, bottom: 10),
                              child: Column(
                                  children: [ Row(children: [
                                    Container(
                                      width: 160,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.horizontal(),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Maksimum Pendanaan\nRp 5.000.000',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            color: Colors.black,
                                            height: 1,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 80,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.horizontal(),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Bagi Hasil\n12%',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            color: Colors.black,
                                            height: 1,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),

                                    Spacer(),
                                    Container(
                                      width: 85,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.horizontal(),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Tenor\n6 Minggu',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            color: Colors.black,
                                            height: 1,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),

                                  ],)
                                ]
                              ),
                            ),
                            
                            // TENTANG UMKM & RIWAYAT
                            Container(
                              padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                              child: Column(
                                  children: [ Row(children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: Colors.black,
                                          backgroundColor: Colors.yellow,
                                          // side: BorderSide(color: Colors.yellow),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(Radius.elliptical(90, 85)),
                                            ),
                                          padding: const EdgeInsets.only(left: 40, top: 9, right: 40, bottom: 9),
                                          textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                                        ),
                                        onPressed: () { // routing on pressed TENTANG UMKM
                                                  
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
                                          foregroundColor: Colors.white,
                                          side: BorderSide(color: Colors.yellow),
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(90, 85))),
                                          padding: const EdgeInsets.only(left: 40, top: 9, right: 40, bottom: 9),
                                          textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                                        ),
                                        onPressed: () { // routing on pressed RIWAYAT
                                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                                return PostinganMemberRiwayatScreen();
                                          }));
                                        }, 
                                        child: 
                                          const Text("Riwayat"),
                                      ) ,
                                    ), 
                                  ],)
                                ]
                              ),
                            ),

                            // BAGI HASIL, PENDANAAN KE, JENIS ANGSURAN, JUMLAH ANGSURAN, PENGHASILAN PERBULAN
                            Container(
                              padding: const EdgeInsets.only(left:5, right: 5, top: 20, bottom: 5),
                              child : Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: double.maxFinite,
                                  padding: EdgeInsets.only(left: 20, right: 20),
                                  margin: EdgeInsets.only(bottom: 20, top: 0),
                                  decoration: BoxDecoration(
                                    color: Colors.blueAccent.shade700,
                                  ),
                                child: Table(
                                  border: TableBorder.all(color: Colors.transparent),
                                  children: [
                                    TableRow(children: [
                                      Text('Bagi Hasil',
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontFamily: 'Poppins'
                                      ),),
                                      Text('Rp 600.000', 
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),),
                                    ]),

                                    TableRow(children: [
                                      Text('Pendanaan ke',
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),
                                      ),
                                      Text('2',
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),),
                                    ]),
                                    TableRow(children: [
                                      Text('Jenis angsuran', 
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),),
                                      Text('Mingguan', 
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),),
                                    ]),
                                    TableRow(children: [
                                      Text('Jumlah angsuran',
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),),
                                      Text('Rp 112.000',
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),),
                                    ]),
                                    TableRow(children: [
                                      Text('Penghasilan perbulan',
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),),
                                      Text('Rp 1.325.000',
                                      textAlign: TextAlign.right,
                                      style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),),
                                    ]),
                                  ],
                                ),
                              ),
                              ),
                            ),

                            Container(
                              padding: const EdgeInsets.only(left:20, right: 20, top: 5),
                              child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Risiko Pendanaan',
                                maxLines: 3,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.yellow,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),  
                            ),

                            Container(
                              padding: const EdgeInsets.only(left:20, right: 10, top: 5),
                              child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Setiap industri yang digeluti oleh Mitra Usaha kami memiliki\nrisikonya masing-masing. Berikut adalah risiko-risiko yang\ndihadapi oleh Mitra Usaha ini yang perlu untuk Anda ketahui:',
                                maxLines: 3,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),  
                            ),

                            Container(
                              padding: const EdgeInsets.only(left:20, right: 10, top: 5),
                              child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                '1.  Dipengaruhi oleh kompetisi antar penjual yang\n    mengakibatkan berkurangnya permintaan penjualan\n2. Keadaan ekonomi makro di Negara tersebut melambat\n3. Perbedaan karakteristik permintaan dan kurangnya\n    pengetahuan di market menyebabkan menurunnya\n    penjualan',
                                maxLines: 10,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),  
                            ),
                                    
                            // BUTTON EDIT POSTINGAN
                            Container(
                              padding: const EdgeInsets.only(left:20, right: 20, top: 30),
                              child: Align(
                              alignment: Alignment.topCenter,
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  backgroundColor: Colors.yellow,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(90, 85))),
                                  padding: const EdgeInsets.only(left: 40, top: 9, right: 40, bottom: 9),
                                  textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins', fontWeight: FontWeight.w600),
                                ),
                                onPressed: () { // routing on pressed EDIT POSTINGAN
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                                return PostinganBaruMemberScreen();
                                  }));
                                }, 
                                child: 
                                  const Text("Edit Postingan"),
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

// routes (sementara)
  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';
  static const String berandaInvestorScreen = '/beranda_investor_screen'; // sementara
  static const String berandaMemberScreen = '/beranda_member_screen'; // sementara
  static const String postinganMemberScreen='/postingan_member_screen';
  static const String portofolioVisitorScreen='/portofolio_visitor_screen';
  static const String postinganMemberTentangScreen='/postingan_member_tentang_screen';
}
