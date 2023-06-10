// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/laporan1_investor_screen.dart';

const List<String> list = <String>['Pilih Bulan','Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];

class Laporan2InvestorScreen extends StatefulWidget {
  const Laporan2InvestorScreen ({Key? key}) : super(key: key); 

  @override
  State<Laporan2InvestorScreen> createState() => _Laporan2InvestorScreenState();

}

class _Laporan2InvestorScreenState extends State<Laporan2InvestorScreen> {
   String dropdownvalue = list.first;  

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
                        Padding(padding: EdgeInsets.fromLTRB(26,10, 50, 20),
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
                        
                      // BUTTON TAB HISTORI TRANSAKSI & LAPORAN BULANAN
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
                                    padding: const EdgeInsets.only(left: 47, top: 5, right: 47, bottom: 5),
                                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold ,fontFamily: 'Poppins'),
                                  ),
                                  
                                  onPressed: () { // routing on pressed histori transaksi
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                      return Laporan1InvestorScreen();
                                    }));
                                  }, 
                                  child: 
                                    const Text("Histori\nTransaksi", textAlign: TextAlign.center,),
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
                                    padding: const EdgeInsets.only(left: 50, top: 5, right: 50, bottom: 5),
                                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold , fontFamily: 'Poppins'),
                                  ),
                                  onPressed: () { // routing on pressed laporan bulanan
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    //   return Laporan2InvestorScreen();
                                    // }));
                                  }, 
                                  child: 
                                    const Text("Laporan\nBulanan", textAlign: TextAlign.center,),
                                ) ,
                              ), 
                            ],)
                          ]
                        ),
                      ),

                            Container(
                              padding: const EdgeInsets.only(right: 35, bottom: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 180,
                                        height: 50,
                                        child: Center(
                                          child: Text(
                                            'Januari 2023',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              height: 1,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                      Spacer(),


                                     // DROPDOWN BUTTON
                                    DecoratedBox(
                                      decoration: BoxDecoration( 
                                        color:Colors.yellow, //background color of dropdown button/border of dropdown button
                                        borderRadius: BorderRadius.circular(50), //border raiuds of dropdown button
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                        child: 
                                        DropdownButton(     
                                          underline: Container(), //remove underline  
                                          hint: Text("Pilih Bulan", selectionColor: Colors.black,),
                                          value: dropdownvalue,
                                          // text style
                                          style: const TextStyle(fontSize: 14,color: Colors.black, fontFamily: 'Poppins'),
                                          // Down Arrow Icon
                                          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black),    
                                          // Array list of items
                                          items: list.map<DropdownMenuItem<String>>((String items) {
                                            return DropdownMenuItem<String>(
                                              value: items,
                                              child: Text(items),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will change button value to selected value
                                          onChanged: (String? newValue) { 
                                            setState(() {
                                              dropdownvalue = newValue!;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                      
                                    ],
                                  )
                                ],
                              ),
                            ),

                            Container(
                              width: 350,
                              margin: EdgeInsets.only(left: 30,top: 20,right: 30),
                              padding: EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.blueAccent),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 0),
                                    blurRadius: 2,
                                    color: Colors.grey.withOpacity(0.2),
                                  ),
                                  BoxShadow(
                                    offset: Offset(8, 0),
                                    blurRadius: 7,
                                    color: Colors.grey.withOpacity(0.4),
                                  ),
                                ],
                              ),

                              //TABLE INFORMASI AKUN
                              child: Table(
                                defaultColumnWidth: IntrinsicColumnWidth(),
                                border: TableBorder.all(color: Colors.transparent),
                                children: [
                                  TableRow(
                                    children: [
                                    Text(" "), //empty table
                                    Text(
                                    " 26 Januari 2023",
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'),   
                                    ),
                                  ]),
                                  TableRow(
                                    children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 15, bottom: 5),
                                      child:
                                      Text(
                                        'Nama UMKM',
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black,
                                                fontFamily: 'Poppins'))),
                                    Container(
                                      padding: EdgeInsets.only(top: 15, bottom: 5),
                                      child:
                                      Text(
                                        'Buah Ibu Siti', 
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                                fontSize: 14,
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
                                        'Rincian Pendapatan',
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black,
                                                fontFamily: 'Poppins'))),
                                    Container(
                                      padding: EdgeInsets.only(top: 5, bottom: 5),
                                      child:
                                      Text(
                                        'Rp 5.000.000',
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                                fontSize: 14,
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
                                        'Rincian Laba', 
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black,
                                                fontFamily: 'Poppins'))),
                                    Container(
                                      padding: EdgeInsets.only(top: 5, bottom: 5),
                                      child:  
                                      Text(
                                        'Rp 1.000.000', 
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                                fontSize: 14,
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
                                        'Jumlah Cicilan',
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black,
                                                fontFamily: 'Poppins'))),
                                    Container(
                                      padding: EdgeInsets.only(top: 5, bottom: 5),
                                      child: 
                                      Text(
                                        'Rp 2.000.000',
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                                fontSize: 14,
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
                                        'Cicilan yang Telah Dibayar',
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black,
                                                fontFamily: 'Poppins'))),
                                    Container(
                                      padding: EdgeInsets.only(top: 5, bottom: 5),
                                      child:  
                                      Text(
                                        'Rp 800.000',
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                                fontSize: 14,
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
                                        'Cicilan yang Masih\nHarus Dibayar',
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black,
                                                fontFamily: 'Poppins'))),
                                    Container(
                                      padding: EdgeInsets.only(top: 5, bottom: 5),
                                      child:
                                      Text(
                                        'Rp 1.200.000',
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                                fontSize: 14,
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
                                        'Tanggal Jatuh\nTempo Cicilan',
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black,
                                                fontFamily: 'Poppins'))),
                                    Container(
                                      padding: EdgeInsets.only(top: 5, bottom: 5),
                                      child:
                                      Text(
                                        '30 Agustus 2023',
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                                fontSize: 14,
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
                                        'Tren Bisnis UMKM',
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black,
                                                fontFamily: 'Poppins'))),
                                      Container(
                                      padding: EdgeInsets.only(top: 5, bottom: 5),
                                      child:
                                      Text(
                                        'Buah',
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black,
                                                fontFamily: 'Poppins'))),
                                  ])
                                ],
                              ),
                            ),

                          Container(
                            margin: EdgeInsets.only(top: 30),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.black,
                                side: BorderSide(color: Colors.yellow),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(90, 85))),
                                padding: const EdgeInsets.only(left: 120, top: 10, right: 120, bottom: 10),
                                textStyle: const TextStyle(fontSize: 16,fontFamily: 'Poppins'),
                              ),
                              onPressed: () { // routing on pressed download
                              //  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                              //     return MemberActor();
                              //   }));
                              }, 
                              child: 
                                const Text("Download"),
                            ),
                          )
                    ]    
              ),
            ),
          ),
        ),
      );
  }
}
