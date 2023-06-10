// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';


class ProfilInvestorScreen extends StatelessWidget {
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
                        height: 140,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: double.maxFinite,
                                // margin: EdgeInsets.only(top: 30),
                                padding: EdgeInsets.only(left: 33, top:30, right: 33),
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
                                    //IMAGE PROFILE PIC
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                                      child:
                                      Image.asset('assets/images/img_pic_ujang.png',
                                      width: 60, height: 60, fit: BoxFit.fill,),
                                    ),
                                    // TEXT NAME (ganti pake $_name nanti)
                                    Container(
                                      width: 170,
                                      margin: EdgeInsets.only(top:12 , left: 15, bottom: 12),
                                      child: 
                                        Text(
                                              "Ujang Manujang",
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),    
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
                                      padding: const EdgeInsets.fromLTRB(0, 15, 5, 10),
                                      child:
                                      Image.asset('assets/images/img_notifyellow.png',
                                      width: 22, height: 25, fit: BoxFit.fill,),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                                        
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.maxFinite,
                          padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                          margin: EdgeInsets.only(bottom: 20, top: 0),
                          decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(width: 2, color: Colors.grey),
                            ),
                          ),
                        //TABLE INFORMASI AKUN
                        child: Table(
                          defaultColumnWidth: IntrinsicColumnWidth(),
                          border: TableBorder.all(color: Colors.transparent),
                          children: [
                            TableRow(
                              children: [
                              Text(
                              "Informasi Akun",
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent,
                                      fontFamily: 'Poppins'),   
                              ),
                              TextButton(
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.black,
                                  minimumSize: Size.zero,
                                  padding: EdgeInsets.only(top:5),
                                  alignment: Alignment.centerRight,
                                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                  textStyle: const TextStyle(fontSize: 14, fontFamily: 'Poppins'),
                                ),
                                onPressed: (){ // move to edit akun profil
                                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                  //   return VisitorActor();
                                  // }));
                                  },
                                child: const Text("Edit Akun"),
                              ),
                            ]),
                            TableRow(
                              children: [
                              Container(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child:
                                Text(
                                  'Nama Lengkap',
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
                                  'Ujang Manujang', 
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontFamily: 'Poppins'))),
                            ]),
                            TableRow(
                              children: [
                              Container(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child:
                                Text(
                                  'Email',
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
                                  'ujangmanujang@gmail.com',
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontFamily: 'Poppins'))),
                            ]),
                            TableRow(
                              children: [
                              Container(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child:
                                Text(
                                  'Password', 
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
                                  '********', 
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontFamily: 'Poppins'))),
                            ]),
                            TableRow(
                              children: [
                              Container(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child:
                                Text(
                                  'No Telepon',
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
                                  '081275438796',
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontFamily: 'Poppins'))),
                            ]),
                            TableRow(
                              children: [
                              Container(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child:  
                                Text(
                                  'KTP',
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
                                  '321***********',
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontFamily: 'Poppins'))),
                            ]),
                            TableRow(
                              children: [
                              Container(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child:                                
                                Text(
                                  'NPWP',
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
                                  '49.000.123.*****',
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontFamily: 'Poppins'))),
                            ]),
                            TableRow(
                              children: [
                              Container(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child:
                                Text(
                                  'Rekening Bank',
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
                                  'BNI',
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontFamily: 'Poppins'))),
                            ]),
                            TableRow(
                              children: [
                              Container(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child:
                                Text(
                                  'Alamat',
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
                                  'Gegerkalong Hilir, Bandung',
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontFamily: 'Poppins'))),
                            ])
                          ],
                        ),
                      ),
                    ),

                    Align(
                      child: Container(
                        padding: EdgeInsets.only(left: 20,right: 20, bottom: 20),
                        // padding: EdgeInsets.all(20),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(

                            bottom: BorderSide(width: 2, color: Colors.grey),
                            ),                                  
                          ),
                          //TABLE DOKUMEN
                        child: Table(
                          border: TableBorder.all(color: Colors.transparent),
                          children: [
                            TableRow(
                              children: [
                                Text(
                                  "Dokumen",
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent,
                                    fontFamily: 'Poppins'
                                  ),    
                                ),
                              ]
                            ),

                            TableRow(
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: EdgeInsets.zero,
                                    alignment: Alignment.centerLeft,
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                                  ),
                                  onPressed: (){ // move to surat perjanjian
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    //   return VisitorActor();
                                    // }));
                                    },
                                  child: const Text("Surat Perjanjian"),
                                ),
                              ]
                            ),
                          ]  
                        ),
                      )
                    ),

                    Align(
                      child: Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(left: 20, right: 20),
                        // TABLE INFORMASI LAINNYA
                        child: Table(
                          border: TableBorder.all(color: Colors.transparent),
                          children: [
                            TableRow(
                              children: [
                                Text(
                                  "Informasi Lainnya",
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent,
                                    fontFamily: 'Poppins'
                                  ),
                                ),
                              ]
                            ),

                            TableRow(
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: EdgeInsets.zero,
                                    alignment: Alignment.centerLeft,
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                                  ),
                                  onPressed: (){ // move to FAQ
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    //   return VisitorActor();
                                    // }));
                                    },
                                  child: const Text("FAQ"),
                                ),
                              ]
                            ),

                            TableRow(
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: EdgeInsets.zero,
                                    alignment: Alignment.centerLeft,
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                                  ),
                                  onPressed: (){ // move to Syarat dan Ketentuan
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    //   return VisitorActor();
                                    // }));
                                    },
                                  child: const Text("Syarat dan Ketentuan"),
                                ),
                              ]
                            ),

                            TableRow(
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: EdgeInsets.zero,
                                    alignment: Alignment.centerLeft,
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                                  ),
                                  onPressed: (){ // move to Kebijakan Privasi
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    //   return VisitorActor();
                                    // }));
                                    },
                                  child: const Text("Kebijakan Privasi"),
                                ),
                              ]
                            ),

                            TableRow(
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    padding: EdgeInsets.zero,
                                    alignment: Alignment.centerLeft,
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                                  ),
                                  onPressed: (){ // move to Risiko Pendanaan
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    //   return VisitorActor();
                                    // }));
                                    },
                                  child: const Text("Risiko Pendanaan"),
                                ),
                              ]
                            ),
                          ]  
                        ),
                      )
                    )
                  ]
              )
            )
          )
      ));
  }
}