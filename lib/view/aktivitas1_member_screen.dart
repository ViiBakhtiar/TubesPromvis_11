// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/aktivitas2_member_screen.dart';

class Aktivitas1MemberScreen extends StatefulWidget {

  @override
  State<Aktivitas1MemberScreen> createState() => _Aktivitas1MemberScreenState();
}

class _Aktivitas1MemberScreenState extends State<Aktivitas1MemberScreen> {

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
                              "Aktivitas",
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

                      // BUTTON TAB PEMINJAMAN & RIWAYAT PEMINJAMAN
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
                                      backgroundColor: Colors.blue.shade700,
                                      side: BorderSide(color: Colors.blue.shade700),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
                                      padding: const EdgeInsets.only(left: 35, top: 16, right: 35, bottom: 16),
                                      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold ,fontFamily: 'Poppins'),
                                    ),
                                    onPressed: () { // routing on pressed peminjaman
                                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                      //   return Aktivitas1MemberScreen();
                                      // }));         
                                    }, 
                                    child: 
                                      const Text("Peminjaman", textAlign: TextAlign.center,),
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
                                      padding: const EdgeInsets.only(left: 35, top: 5, right: 35, bottom: 5),
                                      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold , fontFamily: 'Poppins'),
                                    ),
                                    onPressed: () { // routing on riwayat peminjaman
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                        return Aktivitas2MemberScreen();
                                      }));
                                    }, 
                                    child: 
                                      const Text("Riwayat\nPeminjaman", textAlign: TextAlign.center,),
                                  ) ,
                                ), 
                            ],
                            )
                          ]
                        ),
                      ),

                      // TARIK SALDO
                      Container(
                        height: 340,
                        width: 374,
                        margin: EdgeInsets.only(left: 25, top: 10, right: 20, bottom:20),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            //box shadow
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: 330,
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
                                  width: 364,
                                  padding: EdgeInsets.only(
                                    left: 15,
                                    right: 26,
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
                                          "Tarik Saldo",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold ,fontFamily: 'Poppins'),
                                        ),
                                      ),
                                      Container(
                                        width:
                                          118,
                                        margin: EdgeInsets.only(
                                          left: 6,
                                          top: 13,
                                        ),
                                        child: Text(
                                          "Saldo Tersedia\nRp 0",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal ,fontFamily: 'Poppins'),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: 6,
                                          top: 9,
                                        ),
                                        child: Text(
                                          "Penarikan",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal ,fontFamily: 'Poppins'),
                                        ),
                                      ),

                                      // TEXTFORMFIELD Penarikan
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                        child: 
                                          TextFormField(
                                            // controller: emailloginController,
                                            cursorColor: Colors.black,
                                            style: TextStyle(
                                              fontSize: 14, color: Colors.black, fontFamily: 'Poppins'
                                            ),
                                            decoration: InputDecoration(
                                              hintText: "Rp 0",
                                              hintStyle: TextStyle(fontSize: 14, color: Colors.grey, fontFamily: 'Poppins'),
                                              contentPadding: EdgeInsets.all(10),
                                              filled: true,
                                              fillColor: Colors.yellow,
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(20),
                                                borderSide: BorderSide.none,
                                              )
                                            ),
                                          ),
                                      ),
                                      
                                      // BUTTON PROSES
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
                                            onPressed: () { // routing on pressed PROSES
                                                        
                                            }, 
                                            child: 
                                              const Text("Proses"),
                                          ),
                                        )     
                                      ),
                                      
                                      //jumlah maksimum & durasi penarikan
                                      Container(
                                        height: 38,
                                        width: 348,
                                        margin: EdgeInsets.only(
                                          left: 6,
                                          top: 11,
                                          bottom: 2,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 1,
                                                    ),
                                                    child: Text(
                                                      "Jumlah Maksimum",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal ,fontFamily: 'Poppins'),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 70,
                                                      top: 1,
                                                    ),
                                                    child: Text(
                                                      "Rp 2.000.000",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal ,fontFamily: 'Poppins'),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      bottom: 1,
                                                    ),
                                                    child: Text(
                                                      "Durasi Penarikan",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal ,fontFamily: 'Poppins'),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 45,
                                                      top: 1,
                                                    ),
                                                    child: Text(
                                                      "Hingga 2 hari kerja",
                                                      overflow: TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, fontFamily: 'Poppins')
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
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

                      // JATUH TEMPO
                      Container(
                        height: 340,
                        width: 374,
                        margin: EdgeInsets.only(left: 25, top: 10, right: 20, bottom:20),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                          //box shadow
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 330,
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
                                width: 364,
                                padding: EdgeInsets.only(
                                  left: 15,
                                  right: 26,
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
                                        "Jatuh Tempo",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold ,fontFamily: 'Poppins'),
                                      ),
                                    ),

                                    //TABLE
                                    Table(
                                      columnWidths: Map.from({
                                        0: FixedColumnWidth(25),
                                        1: FixedColumnWidth(100),
                                        2: FixedColumnWidth(100),
                                        3: FixedColumnWidth(100),
                                      }),
                                      border: TableBorder.symmetric(inside: BorderSide(width: 2, color: Colors.black26)),
                                      children: [
                                        TableRow(children: [
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 10),
                                            child:Text('No.', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),
                                    
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 10),
                                            child:Text('Peminjaman', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),
                                    
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 10),
                                            child:Text('Tanggal Jatuh Tempo', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),

                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 10),
                                            child:Text('Pelunasan', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ), 
                                        ]),

                                        TableRow(children: [
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('1.', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),
                                          
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('Rp 3.000.000', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),
                                          
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('13/08/2023', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),

                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('Lunas', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),
                                        ]),
                                  
                                        TableRow(children: [
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('2.', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),
                                          
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('Rp 1.000.000', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),
                                          
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('30/08/2023', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),

                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('Belum Lunas', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),
                                        ]),

                                        TableRow(children: [
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),
                                          
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),
                                          
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),

                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),
                                        ]),

                                        TableRow(children: [
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),
                                          
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),
                                          
                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),

                                          Container(
                                            padding: EdgeInsets.only(top: 17, bottom: 17),
                                            child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 12,color: Colors.black, fontFamily: 'Poppins',),) ,
                                          ),
                                        ]),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          )
                        ],
                  ),
                )
              ]
            )
          )    
        ),
      ),
    ); 
  }
}