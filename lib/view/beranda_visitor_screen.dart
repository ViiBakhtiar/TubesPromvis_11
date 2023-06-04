// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/items/rekomendasi_card.dart';
import 'package:frontend_tubes/view/items/berita_card.dart';


class BerandaVisitorScreen extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
                child: Container(
                    width: double.maxFinite,
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
                                padding: EdgeInsets.only(left: 33, top: 44, right: 33, bottom: 44),
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
                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                                      child:
                                      Image.asset('assets/images/img_pic_visitor.png',
                                      width: 55, height: 55, fit: BoxFit.fill,),
                                    ),
                                    // TEXT HI ... NAME (ganti pake $_name nanti)
                                    Container(
                                      width: 66,
                                      margin: EdgeInsets.only(left: 20, bottom: 12),
                                      child: 
                                        Text(
                                              "Hi,\nUser!",
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'Poppins'),    
                                        ),
                                    ),
                                    Spacer(),
                                    //IMAGE PROFILE PIC
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 15, 5, 10),
                                      child:
                                      Image.asset('assets/images/img_notifwhite.png',
                                      width: 22, height: 25, fit: BoxFit.fill,),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                margin: EdgeInsets.only(left: 32, top: 125, right: 35),
                                padding: EdgeInsets.only(left: 21, top: 4, right: 21, bottom: 4),
                                decoration:
                                    BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0.5, 5),
                                        blurRadius: 5,
                                        color: Colors.grey,
                                      ),
                                      ],
                                      color: Colors.white
                                    ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 2,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Saldo Aktif",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),    
                                          ),
                                          Text(
                                            "Rp 0",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),    
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 2,
                                        right: 1,
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child:
                                            Image.asset('assets/images/img_tariksaldo.png',
                                            width: 30, height: 25, fit: BoxFit.fill,),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 2,
                                            ),
                                            child: Text(
                                              "Tarik Saldo",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                  // REKOMENDASI TEXT
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 35, top: 18),
                      child: Row(
                        children: [
                          Text(
                            "Daftar UMKM",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // REKOMENDASI CARD
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 210,
                      child: ListView.separated(
                        padding: EdgeInsets.only(
                          left: 35,
                          top: 4,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 16);
                        },
                        // set ada berapa card (isi card ganti di rekomendasi_card.dart)
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return RekomendasiCard();
                        },
                      ),
                    ),
                  ),

                  // DAFTARKAN DIRIMU CONTAINER
                  Container(
                    height: 130,
                    width: double.maxFinite,
                    margin: EdgeInsets.fromLTRB(35, 15, 35, 20),
                    decoration: 
                    BoxDecoration(
                      color: Colors.blueAccent.shade700,
                      boxShadow: [
                          BoxShadow(
                            offset: Offset(4, -4),
                            blurRadius: 8,
                            color: Colors.black.withOpacity(0.3),
                          ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center, 
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Ayo Segera Daftarkan Dirimu",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Poppins'),
                          ),
                        ),
                      Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: 
                          FilledButton(                         
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.yellow,
                              padding: const EdgeInsets.only(left: 50, right: 50),
                              textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                            ),
                            onPressed: () { // routing on pressed DAFTAR
                              
                            }, 
                            child: 
                            const Text("Daftar"),
                            ),
                      ),
                    ]
                    ),
                  ),
                  


                  // BERITA TERKINI TEXT
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 35, bottom: 5),
                      child: Row(
                        children: [
                          Text(
                            "Berita Terkini",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // BERITA CARD
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 210,
                      child: ListView.separated(
                        padding: EdgeInsets.only(left: 25),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 20);
                        },
                        // set ada berapa card (isi card ganti di berita_card.dart)
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return BeritaCard();
                        },
                      ),
                    ),
                  ),
              ]
            ),
          ),
        )
      )
    );
  }
}