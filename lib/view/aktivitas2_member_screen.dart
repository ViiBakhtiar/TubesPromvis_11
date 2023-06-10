// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/aktivitas1_member_screen.dart';

class Aktivitas2MemberScreen extends StatefulWidget {

  @override
  State<Aktivitas2MemberScreen> createState() => _Aktivitas2MemberScreenState();

}

class _Aktivitas2MemberScreenState extends State<Aktivitas2MemberScreen> {

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
                                      backgroundColor: Colors.blue.shade400,
                                      side: BorderSide(color: Colors.blue.shade400),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
                                      padding: const EdgeInsets.only(left: 35, top: 16, right: 35, bottom: 16),
                                      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold ,fontFamily: 'Poppins'),
                                    ),
                                    onPressed: () { // routing on pressed peminjaman
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                        return Aktivitas1MemberScreen();
                                      }));         
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
                                      backgroundColor: Colors.blue.shade700,
                                      side: BorderSide(color: Colors.blue.shade700),
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
                                      padding: const EdgeInsets.only(left: 35, top: 5, right: 35, bottom: 5),
                                      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold , fontFamily: 'Poppins'),
                                    ),
                                    onPressed: () { // routing on riwayat peminjaman
                                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                      //   return Aktivitas2MemberScreen();
                                      // }));
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

                            Container(
                              margin: EdgeInsets.only(left: 25,top: 10, right: 25),
                              child: 
                                Align(
                                  alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Total Penarikan Dana\nRp 1.500.000',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        height: 1,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                ),
                            ),
                                    

                            // SLIDE BUTTON
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
                              
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    FilledButton(
                                      style: TextButton.styleFrom(
                                      foregroundColor: Colors.black,
                                      backgroundColor: Colors.yellow,
                                      padding: const EdgeInsets.only(left: 20, right: 20),
                                      textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                                    ),
                                      onPressed: (){

                                      },
                                      child: Text("Semua waktu"),
                                    ),
                                    SizedBox(width: 10),
                                    FilledButton(
                                      style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.black,
                                      backgroundColor: Colors.white,
                                      side: BorderSide(color: Colors.yellow),
                                      padding: const EdgeInsets.only(left: 20, right: 20),
                                      textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                                    ),
                                      onPressed: (){

                                      },
                                      child: Text("30 hari terakhir"),
                                    ),
                                    SizedBox(width: 10),
                                    FilledButton(
                                      style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.black,
                                      backgroundColor: Colors.white,
                                      side: BorderSide(color: Colors.yellow),
                                      
                                      padding: const EdgeInsets.only(left: 20, right: 20),
                                      textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                                    ),
                                      onPressed: (){

                                      },
                                      child: Text("3 bulan"),
                                    ),
                                  ]
                                ),
                              ),
                            ),

                            //TABLE
                            Container(
                              width: 360,
                              height: 450,
                              margin: EdgeInsets.only(bottom: 1, left:20, right: 20, top: 10),
                              padding: EdgeInsets.only(left: 1, right: 1),
                              decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius: BorderRadius.circular(20),
                              ),
                              child: Table(
                                columnWidths: Map.from({
                                  0: FixedColumnWidth(30),
                                  1: FixedColumnWidth(100),
                                  2: FixedColumnWidth(100)
                                }),
                                border: TableBorder.symmetric(inside: BorderSide(width: 2, color: Colors.black26)),
                                children: [
                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('No.', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('Tanggal', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('Jumlah', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                  ]),
                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('1.', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('18/05/2023', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('Rp 1.500.000', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),
                                  
                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),

                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),

                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),

                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),

                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),

                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 17, bottom: 17),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),
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