// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:frontend_tubes/view/items/dialog_dana_screen.dart';

// ignore: must_be_immutable
class DialogDanaScreen extends StatefulWidget {
  @override
  State<DialogDanaScreen> createState() => _DialogDanaScreenState();
}

class _DialogDanaScreenState extends State<DialogDanaScreen> {
  // const DialogDanaScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mulai Danai"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Masukkan Dana",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold ,fontFamily: 'Poppins'),
                              ),
                            ),
                        
                            // TEXTFORMFIELD MASUKKAN DANA
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
                                    hintText: "Rp 500.000",
                                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey, fontFamily: 'Poppins'),
                                    contentPadding: EdgeInsets.all(10),
                                    filled: true,
                                    fillColor: Colors.yellow[600],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    )
                                  ),
                                ),
                            ),
                            
                            //SISA MAKSIMAL PENDANAAN
                            Align(
                              alignment: Alignment.topCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.max,
                                children: const[
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 1,
                                      left: 60,
                                    ),
                                    child: Text(
                                        "Sisa Maksimal Pendanaan",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal ,fontFamily: 'Poppins'),
                                      ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 1,
                                    ),
                                    child: Text(
                                        "Rp 200.000",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold ,fontFamily: 'Poppins'),
                                      ),
                                  ),
                                ],
                              ),
                            ),

                            //PEMBAYARAN DARI MITRA & PROYEKSI TOTAL HASIL
                            Container(
                              height: 38,
                              width: 348,
                              margin: EdgeInsets.only(
                                left: 6,
                                top: 30,
                                bottom: 2,
                              ),
                              child: Table(
                                defaultColumnWidth: IntrinsicColumnWidth(),
                                border: TableBorder.all(color: Colors.transparent),
                                children: [
                                  TableRow(
                                    children: const [
                                    Text(
                                      "Pembayaran dari Mitra", 
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: 'Poppins'
                                      ),   
                                    ), //empty table
                                    Text(
                                      "Rp 11.150/Minggu",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontFamily: 'Poppins'),   
                                    ),
                                  ]),
                                  TableRow(
                                    children: [
                                    Container(
                                      padding: EdgeInsets.only(top: 5, bottom: 5),
                                      child:
                                      Text(
                                        'Proyeksi Total Hasil',
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black,
                                          fontFamily: 'Poppins'
                                        )
                                      )
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 5, bottom: 5),
                                      child:
                                      Text(
                                        'Rp 557.500', 
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: 'Poppins'
                                        )
                                      )
                                    ),
                                  ]),
                                  ],
                              ),
                            ),
                            
                            // BUTTON MULAI DANAI
                            Container(
                              padding: const EdgeInsets.only(left:20, right: 10, top: 30),
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.blueAccent,
                                    side: BorderSide(color: Colors.blueAccent),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(90, 85))),
                                    padding: const EdgeInsets.only(left: 40, top: 9, right: 40, bottom: 9),
                                    textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                                  ),
                                  onPressed: () { // routing on pressed PROSES
                                              
                                  }, 
                                  child: 
                                    const Text("Mulai Danai"),
                                ),
                              )     
                            ),


                          ]
                        ),
                      ),
                    ),
                  )
                ]
            ),
        )],
        ),
      )
    ); 
  }
}