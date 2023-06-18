// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, sized_box_for_whitespace 

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/detail_umkm_tentang_investor_screen.dart';


// ignore: must_be_immutable
class DaftarUmkmCard extends StatelessWidget {
  DaftarUmkmCard();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(
            right: 40,
            // bottom
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(3, 2),
                blurRadius: 3,
                color: Colors.black.withOpacity(0.3),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // IMAGE PROFILE PIC
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child:
                        Image.asset('assets/images/img_pic_sari.png',
                        width: 80, height: 80, fit: BoxFit.fill,),
                      ),
                      // SARIWATI
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                          top: 4,
                          bottom: 5,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Sariwati",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                            ),
                            Text(
                              "Modal Jualan Ayam",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                            ),
                            Text(
                              "Belum Selesai",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black26, fontFamily: 'Poppins'),
                            ),
                        ],
                      ),
                    ),
                    ],
                  ),
                ),
              ),

              // MAKSIMAL PENDANAAN - BAGI HASIL - TENOR
              Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 10,
                  right: 20,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 95,
                          child: Text(
                            "Sisa Angsuran",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 3,
                          ),
                          child: Text(
                            "Rp 1.000.000",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                        top: 3,
                        bottom: 2,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Sisa Bagi Hasil",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 3,
                            ),
                            child: Text(
                              "Rp 1.000.000",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Minggu",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 3,
                            ),
                            child: Text(
                              "25",
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
              
              // button chat
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      width: 309,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 1
                      ),
                      decoration: 
                        BoxDecoration(
                          color: Colors.blueAccent.shade700,
                          border: Border.all(
                            color: Colors.blueAccent.shade700,
                            width: 3.0,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      child: 
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          minimumSize: Size.zero,
                          alignment: Alignment.center,
                          // splashFactory: NoSplash.splashFactory,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
                        ),
                        onPressed: (){ // move to Detail UMKM
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          //   return DetailUmkmTentangInvestorScreen();
                          // }));
                          },
                        child: const Text("Chat"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

