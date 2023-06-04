// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, sized_box_for_whitespace 

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/detail_umkm_tentang_investor_screen.dart';


// ignore: must_be_immutable
class RekomendasiCardVertikal extends StatelessWidget {
  RekomendasiCardVertikal();

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
                            Row(
                              children: [
                                // location image
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 2, 2, 0),
                                  child:
                                  Image.asset('assets/images/img_location.png',
                                  width: 10, height: 15, fit: BoxFit.fill,),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 6,
                                  ),
                                  child: Text(
                                    "Cirebon, Jawa Barat",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black26, fontFamily: 'Poppins'),
                                  ),
                                ),
                              ],
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
                  left: 30,
                  top: 19,
                  right: 30,
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
                            "Maksimal\nPendanaan",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 3,
                          ),
                          child: Text(
                            "Rp 5.000.000",
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
                            "Bagi Hasil",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 22,
                            ),
                            child: Text(
                              "12%",
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
                            "Tenor",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 20,
                            ),
                            child: Text(
                              "50 Minggu",
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
              
              // button mulai danai - chat
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Container(
                      width: 154,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 10,
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
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return DetailUmkmTentangInvestorScreen();
                          }));
                          },
                        child: const Text("Mulai Danai"),
                      ),
                    ),
                    Container(
                      width: 
                        155,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 1,
                      ),
                      decoration: 
                      BoxDecoration(
                          border: Border.all(
                            color: Colors.blueAccent.shade700,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                      child:
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blueAccent.shade700,
                          minimumSize: Size.zero,
                          alignment: Alignment.center,
                          // splashFactory: NoSplash.splashFactory,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
                        ),
                        onPressed: (){ // move to chat
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          //   return VisitorActor();
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


//                   //   // height: 51,
//                   //   // width: 182,
//                   //   // text: "Mulai Danai",
//                   //   // shape: ButtonShape.CustomBorderBL20,
//                   //   // padding: ButtonPadding.PaddingAll12,
//                   //   // fontStyle: ButtonFontStyle.PoppinsSemiBold18,
//                   // ),
//                   // CustomButton(
//                   //   height: 51,
//                   //   width: 182,
//                   //   text: "Chat",
//                   //   variant: ButtonVariant.OutlineblackA700,
//                   //   shape: ButtonShape.CustomBorderBR20,
//                   //   padding: ButtonPadding.PaddingAll12,
//                   //   fontStyle: ButtonFontStyle.PoppinsSemiBold18blackA700,
//                   // ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }