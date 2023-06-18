// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/items/rekomendasi_card.dart';
import 'package:frontend_tubes/view/items/berita_card.dart';
import 'package:pie_chart/pie_chart.dart';

// import 'package:frontend_tubes/view/daftar_chat_investor_screen.dart';

Map<String, double> dataMap= {
    "Dana Diterima": 340000,
    "Dana Belum Diterima": 660000,
  };

final colorList = <Color>[
    Colors.greenAccent,
    Colors.redAccent,
  ];

class BerandaInvestorScreen extends StatelessWidget {
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
                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child:
                                      Image.asset('assets/images/img_pic_ujang.png',
                                      width: 60, height: 60, fit: BoxFit.fill,),
                                    ),
                                    // TEXT HI ... NAME (ganti pake $_name nanti)
                                    Container(
                                      width: 66,
                                      margin: EdgeInsets.only(left: 20, bottom: 12),
                                      child: 
                                        Text(
                                              "Hi,\nUjang!",
                                              textAlign: TextAlign.left,
                                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white, fontFamily: 'Poppins'),    
                                        ),
                                    ),
                                    Spacer(),
                                    //IMAGE PROFILE PIC
                                    InkWell(
                                      onTap: () {
                                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                        //   return DaftarChatInvestorScreen();
                                        // }));
                                      },
                                    child: 
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 15, 5, 10),
                                        child:
                                        Image.asset('assets/images/img_notifyellow.png',
                                        width: 22, height: 25, fit: BoxFit.fill,),
                                      ),
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
                            "Rekomendasi",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 18,
                            ),
                            child: Text(
                              "00:00:00",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),
                            ),
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

                 
                  // PROGRESS PENDANAAN CONTAINER
                  Container(
                    height: 193,
                    width: 374,
                    margin: EdgeInsets.only(left: 25, top: 10, right: 20, bottom:20),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height:180,
                            width:330,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(12, -2),
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
                              height: 186,
                              width: 364,
                              padding: EdgeInsets.only(
                                left: 15,
                                top: 12,
                                right: 26,
                                bottom: 12,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        right: 60, 
                                      ),
                                      child: Text(
                                        "Progress Pendanaan",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Poppins'),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height:
                                        124,
                                      width:
                                        124,
                                      margin: EdgeInsets.only(
                                        left: 5,
                                        bottom: 10,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height:
                                                108,
                                              width:
                                                108,
                                              margin: EdgeInsets.only(
                                                left: 6,
                                              ),
                                            ),
                                          ),

                                        // PIE CHART
                                          Align(
                                            alignment: Alignment.center,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                // PIE CHART
                                                PieChart(
                                                      dataMap: dataMap, // CHANGE VALUE
                                                      baseChartColor: Colors.grey[300]!,
                                                      colorList: colorList,
                                                      chartRadius: MediaQuery.of(context).size.width / 4.5,
                                                      initialAngleInDegree: 180,
                                                      chartType: ChartType.disc,
                                                      legendOptions: LegendOptions(
                                                        showLegends: false,
                                                        showLegendsInRow: true,
                                                        legendPosition: LegendPosition.left,
                                                        legendTextStyle: TextStyle(
                                                          fontWeight: FontWeight.w100,
                                                          fontFamily: 'Poppins'
                                                        ),
                                                      ),
                                                    chartValuesOptions: ChartValuesOptions(
                                                        showChartValueBackground: false,
                                                        showChartValues: true,
                                                        showChartValuesInPercentage: true,
                                                        showChartValuesOutside: false,
                                                        decimalPlaces: 0,
                                                    ),
                                                  )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Dana Diterima",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                                        ),
                                        Text(
                                          "Rp 340.000",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.green, fontFamily: 'Poppins'),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: 14,
                                          ),
                                          child: Text(
                                            "Dana Belum Diterima ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                                          ),
                                        ),
                                        Text(
                                          "Rp 660.000",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.redAccent, fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
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

// routes (sementara)
  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';
}