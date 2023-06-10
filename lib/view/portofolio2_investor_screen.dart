// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/portofolio1_investor_screen.dart';
import 'package:frontend_tubes/view/items/daftar_umkm_card.dart';

const List<String> list = <String>['Pilih Bulan','Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];

class Portofolio2InvestorScreen extends StatefulWidget {
  const Portofolio2InvestorScreen ({Key? key}) : super(key: key); 

  @override
  State<Portofolio2InvestorScreen> createState() => _Portofolio2InvestorScreenState();

}

class _Portofolio2InvestorScreenState extends State<Portofolio2InvestorScreen> {
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
                              "Portofolio",
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
                        
                      // BUTTON TAB PROGRESS PENDANAAN & DAFTAR UMKM
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
                                    alignment: Alignment.center,
                                    backgroundColor: Colors.blue.shade400,
                                    side: BorderSide(color: Colors.blue.shade400),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
                                    padding: const EdgeInsets.only(left: 40, top: 5, right: 40, bottom: 5),
                                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold ,fontFamily: 'Poppins'),
                                  ),
                                  
                                  onPressed: () { // routing on pressed PROGRESS PENDANAAN
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                      return Portofolio1InvestorScreen();
                                    }));
                                  }, 
                                  child: 
                                    const Text("Progress\nPendanaan", textAlign: TextAlign.center,),
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
                                    padding: const EdgeInsets.only(left: 55, top: 5, right: 55, bottom: 5),
                                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold , fontFamily: 'Poppins'),
                                  ),
                                  onPressed: () { // routing on pressed DAFTAR UMKM
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    //   return Portofolio2InvestorScreen();
                                    // }));
                                  }, 
                                  child: 
                                    const Text("Daftar\nUMKM", textAlign: TextAlign.center,),
                                ) ,
                              ), 
                            ],)
                          ]
                        ),
                      ),

                      // Belum Selesai & Selesai
                            Container(
                              padding: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
                              child: Column(
                                  children: [ 
                                    Row(children: [
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
                                            padding: const EdgeInsets.only(left: 30, top: 5, right: 30, bottom: 5),
                                            textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                                          ),
                                          onPressed: () { // routing on pressed Belum Selesai
                                                    
                                          }, 
                                          child: 
                                            const Text("Belum Selesai"),
                                        ) ,
                                      ), 
                                      Spacer(),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            foregroundColor: Colors.black,
                                            side: BorderSide(color: Colors.yellow),
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(90, 85))),
                                            padding: const EdgeInsets.only(left: 40, top: 5, right: 40, bottom: 5),
                                            textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                                          ),
                                          onPressed: () { // routing on pressed Selesai
                                            // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                            //   return ;
                                            // }));
                                          }, 
                                          child: 
                                            const Text("Selesai"),
                                        ) ,
                                      ), 
                                    ],
                                  )
                                ]
                              ),
                            ),

                      // REKOMENDASI CARD
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: 500,
                          child: ListView.separated(
                            padding: EdgeInsets.only(
                              left: 35,
                              top: 10,
                              bottom: 10,
                              
                            ),
                            scrollDirection: Axis.vertical,
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 16);
                            },
                            // set ada berapa card (isi card ganti di rekomendasi_card.dart)
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return DaftarUmkmCard();
                            },
                          ),
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
