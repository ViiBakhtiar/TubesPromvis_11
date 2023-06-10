// ignore_for_file: , prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/laporan2_investor_screen.dart';

const List<String> list = <String>['Pilih Bulan','Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];

class Laporan1InvestorScreen extends StatefulWidget {
  const Laporan1InvestorScreen ({Key? key}) : super(key: key);

  @override
  State<Laporan1InvestorScreen> createState() => _Laporan1InvestorScreenState();

}

class _Laporan1InvestorScreenState extends State<Laporan1InvestorScreen> {
 // Initial Selected Value
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
                        
                      // BUTTON TAB HISTORI TRANSAKSI  & LAPORAN BULANAN
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
                                    padding: const EdgeInsets.only(left: 47, top: 5, right: 47, bottom: 5),
                                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold ,fontFamily: 'Poppins'),
                                  ),
                                  
                                  onPressed: () { // routing on pressed histori transaksi 
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    //   return Laporan1InvestorScreen();
                                    // }));         
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
                                    backgroundColor: Colors.blue.shade400,
                                    side: BorderSide(color: Colors.blue.shade400),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
                                    padding: const EdgeInsets.only(left: 50, top: 5, right: 50, bottom: 5),
                                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold , fontFamily: 'Poppins'),
                                  ),
                                  onPressed: () { // routing on pressed laporan bulanan
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                      return Laporan2InvestorScreen();
                                    }));
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
                                              fontSize: 16,
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
                                          // hint: Text("Pilih Bulan", selectionColor: Colors.black,),
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

                            //Table
                            Container(
                              width: 360,
                              height: 532,
                              margin: EdgeInsets.only(bottom: 1, left:20, right: 20, top: 20),
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
                                      padding: EdgeInsets.only(top: 25, bottom: 11),
                                      child:Text('No.', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('Nama\nTransaksi', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('Nominal\nTransaksi', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                  ]),
                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 25, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),
                                  
                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 25, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),

                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 25, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),

                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 25, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),

                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 25, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),

                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 25, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),

                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 25, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),

                                  TableRow(children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 25, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                    
                                    Container(
                                      padding: EdgeInsets.only(top: 11, bottom: 11),
                                      child:Text('', textAlign: TextAlign.center, style: TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins',),) ,
                                    ),
                                  ]),
                                ],
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
