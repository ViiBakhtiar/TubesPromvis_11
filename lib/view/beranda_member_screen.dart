// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/items/berita_card.dart';

class BerandaMemberScreen extends StatelessWidget {
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
                                padding: EdgeInsets.only(left: 33, top: 35, right: 33, bottom: 35),
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
                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                                      child:
                                      Image.asset('assets/images/img_pic_siti.png',
                                      width: 60, height: 60, fit: BoxFit.fill,),
                                    ),
                                    // TEXT HI ... NAME (ganti pake $_name nanti)
                                    Container(
                                      width: 66,
                                      margin: EdgeInsets.only(left: 20, bottom: 12),
                                      child: 
                                        Text(
                                              "Hi,\nSiti!",
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'Poppins'),    
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

                      // REKAP PEMINJAMAN
                      Container(
                        padding: EdgeInsets.only(
                          top: 12,
                          bottom: 12,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 35,
                                  top: 15,
                                ),
                                child: Text(
                                  "Rekap Peminjaman Anda",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black, fontFamily:'Poppins'),
                                ),
                              ),
                            ),
                            Container(
                              width:364,
                              margin: EdgeInsets.only(
                                left: 32,
                                top: 13,
                                right: 33,
                              ),
                              padding: EdgeInsets.only(
                                left: 13,
                                top: 10,
                                right: 13,
                                bottom: 10,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.blueAccent.shade700,
                                    width: 3,
                                  ),
                                  color: Colors.white,
                                  boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, -1),
                                        blurRadius: 3,
                                        color: Colors.grey,
                                      ),
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 2),
                                      child: Text(
                                        "Riwayat Peminjaman",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black, fontFamily:'Poppins'),
                                      ),
                                    ),
                                  ),

                                  Container(
                                    height:
                                      56,
                                    width: 
                                      262,
                                    margin: EdgeInsets.only(
                                      left: 3,
                                      top: 17,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children:[
                                        Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                          height:
                                            55,
                                          width: 
                                            260,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "Tarik Saldo sebesar Rp 1.500.000",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black, fontFamily:'Poppins'),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Text(
                                            "Pada tanggal 13 Juni 2023",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black, fontFamily:'Poppins'),
                                          ),
                                        ),
                                      ]
                                    )

                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: 35,
                                      ),
                                      child: Text(
                                        "Lihat Selengkapnya",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black, fontFamily:'Poppins'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 10,
                                top: 25,
                                right: 10,
                                bottom: 20,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                      top: 5,
                                      right: 10,
                                      bottom: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blueAccent.shade700,
                                        width: 3,
                                      ),
                                      color: Colors.white,
                                      boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0, -1),
                                            blurRadius: 3,
                                            color: Colors.grey,
                                          ),
                                      ],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 3,
                                          ),
                                          child: 
                                          Text(
                                            "Periode Tersisa",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black, fontFamily:'Poppins'),
                                            
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 23,
                                          ),
                                          child: Text(
                                            "5 Hari 6 Bulan",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black, fontFamily:'Poppins'),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 23,
                                            left: 22,
                                          ),
                                          child: Text(
                                            "Lihat Selengkapnya",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.right,
                                            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.black, fontFamily:'Poppins'),
                                          ),
                                        ),
                                      ]
                                    ),
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(
                                      left: 10,
                                      top: 5,
                                      right: 10,
                                      bottom: 5,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.blueAccent.shade700,
                                        width: 3,
                                      ),
                                      color: Colors.white,
                                      boxShadow: [
                                          BoxShadow(
                                            offset: Offset(0, -1),
                                            blurRadius: 3,
                                            color: Colors.grey,
                                          ),
                                      ],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 3,
                                          ),
                                          child: 
                                          Text(
                                            "Penarikan Terakhir",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black, fontFamily:'Poppins'),
                                            
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 23,

                                          ),
                                          child: Text(
                                            "6 Hari Lalu",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black, fontFamily:'Poppins'),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 23,
                                            left: 45
                                            ,
                                          ),
                                          child: Text(
                                            "Lihat Selengkapnya",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.right,
                                            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.black, fontFamily:'Poppins'),
                                          ),
                                        ),
                                      ]
                                    ),
                                  )
                                ],
                              )
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

                  ]// children column 2
              )
            )
        ])
      )))
    );
  }
}