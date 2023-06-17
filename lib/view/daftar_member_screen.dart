// ignore_for_file: use_key_in_widget_constructors, prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend_tubes/actor/member_actor.dart';
import 'package:frontend_tubes/view/daftar_investor_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Member{
  final String username;
  final String alamat;
  final String jenis_umkm;
  final String no_ktp;
  final String npwp;
  final String pendapatan;
  final String rekening_bank;

  Member({
    required this.username,
    required this.alamat,
    required this.jenis_umkm,
    required this.no_ktp,
    required this.npwp,
    required this.pendapatan,
    required this.rekening_bank,
  });

  Map<String, dynamic> toJson(){
    return{
      'username': username,
      'alamat': alamat,
      // 'jenis_umkm': jenis_umkm,
      'no_ktp': no_ktp,
      'npwp': npwp,
      'pendapatan': pendapatan,
      'rekening_bank': rekening_bank,
    };
  }
}

class DaftarMemberScreen extends StatefulWidget {
  @override
  State<DaftarMemberScreen> createState() => _DaftarMemberScreenState();

}

class _DaftarMemberScreenState extends State<DaftarMemberScreen> {
  String dropdownvalue = '0'; 

  // List of items in our dropdown menu
  var items = [    
    '0',
    '< Rp 500.000',
    'Rp 500.000 - Rp 2.000.000',
    'Rp 2.000.000 - Rp 5.000.000',
    'Rp 5.000.000 - Rp 10.000.000',
    'Rp 10.000.000 - Rp 20.000.000',
    '>Rp 20.000.000',
  ];
     
  TextEditingController usernameController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController jenisUmkmController = TextEditingController();
  TextEditingController noKtpController = TextEditingController();
  TextEditingController npwpController = TextEditingController();
  TextEditingController pendapatanController = TextEditingController();
  TextEditingController rekeningBankController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> _registerMember() async{
    final String apiUrl = 'http://127.0.0.1:8000/register';

    final Member user = Member(
      username: usernameController.text,
      alamat: alamatController.text,
      jenis_umkm: jenisUmkmController.text,
      no_ktp: noKtpController.text,
      npwp: npwpController.text,
      pendapatan: pendapatanController.text,
      rekening_bank: rekeningBankController.text,
    );

    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(user.toJson()), 
    );

    if (response.statusCode == 200) {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Success'),
            content: const Text('Member registered successfully'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
    else{
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Failed to register Member'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

@override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
            child: Form(
              key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.only(left: 0, top: 25, right: 0, bottom: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [ Row(
                        children:[
                            // LEFT ARROW NAV
                        Padding(padding: const EdgeInsets.fromLTRB(25, 0, 20, 0),
                          child: InkWell(
                            onTap: () {
                               Navigator.pop(context);
                             }, // Image tapped
                             splashColor: Colors.white70, // Splash color over image
                            child: Ink.image(
                              fit: BoxFit.fill, // Fixes border issues
                              width: 10,
                              height: 20,
                              image: AssetImage(
                                'assets/images/img_arrowleft.png',
                              ),
                            ),
                          ),
                        ),

                        // TEXT DAFTAR
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: 
                          Text(
                              "Daftar",
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

                      // BUTTON TAB INVESTOR & MEMBER
                      Container(
                        padding: const EdgeInsets.only(left: 45, right: 45, top: 15, bottom: 10),
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
                                    padding: const EdgeInsets.only(left: 40, top: 9, right: 40, bottom: 9),
                                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold ,fontFamily: 'Poppins'),
                                  ),
                                  
                                  onPressed: () { // routing on pressed Member
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                      return DaftarInvestorScreen();
                                    }));        
                                  }, 
                                  child: 
                                    const Text("Investor"),
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
                                    padding: const EdgeInsets.only(left: 40, top: 9, right: 40, bottom: 9),
                                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold , fontFamily: 'Poppins'),
                                  ),
                                  onPressed: () { // routing on pressed Member
                                            
                                  }, 
                                  child: 
                                    const Text("Member"),
                                ) ,
                              ), 
                            ],)
                          ]
                        ),
                      ),

                      // IDENTITAS PRIBADI CONTAINER
                      Container(
                        height: 600,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left:35, bottom: 15, top:15, right:35),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 4,
                                color: Colors.grey.withOpacity(0.2),
                              ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // IDENTITAS PRIBADI
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                              child: 
                                Text("Identitas Pribadi",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontFamily: 'Poppins')
                                )
                            )
                          ),
                        // Username
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: 
                                Text("Username",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontFamily: 'Poppins')
                                )
                            )
                          ),
                          // TEXTFORMFIELD Username
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: 
                            TextFormField(
                              controller: usernameController,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                fontSize: 15, color: Colors.black, fontFamily: 'Poppins'
                              ),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ),

                        // Alamat
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: 
                                Text("Alamat",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontFamily: 'Poppins')
                                )
                            )
                          ),
                          // TEXTFORMFIELD Alamat
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: 
                            TextFormField(
                              controller: alamatController,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                fontSize: 15, color: Colors.black, fontFamily: 'Poppins'
                              ),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ), 

                        // Jenis UMKM
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: 
                                Text("Jenis UMKM",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontFamily: 'Poppins')
                                )
                            )
                          ),
                          // TEXTFORMFIELD Jenis UMKM
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: 
                            TextFormField(
                              controller: jenisUmkmController,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                fontSize: 15, color: Colors.black, fontFamily: 'Poppins'
                              ),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ), 
                          
                          // KTP
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: 
                                Text("KTP",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, 
                                                         color: Colors.white, fontFamily: 'Poppins')
                                )
                            )
                          ),

                          // TEXTFORMFIELD KTP
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: 
                            FilledButton(                         
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.only(left: 85, right: 85, top:12, bottom: 12),
                                textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                              ),
                              onPressed: () { // routing on pressed masukkan file
                                // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                //return DaftarMemberScreen();
                                // }));
                              }, 
                              child: 
                              const Text("Masukkan File"),
                            ), 
                          ),

                          // NPWP
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: 
                                Text("NPWP",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, 
                                                         color: Colors.white, fontFamily: 'Poppins')
                                )
                            )
                          ),
                        
                          // TEXTFORMFIELD NPWP
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: 
                            TextFormField(
                              controller: npwpController,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                fontSize: 15, color: Colors.black, fontFamily: 'Poppins'
                              ),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ),
                          ],
                        ),
                      ),

                    // CONTAINER INFORMASI KEUANGAN
                      Container(
                        height: 290,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left:35, bottom: 35, right:35),
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 4,
                                color: Colors.grey.withOpacity(0.2),
                              ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Informasi Keuangan
                        Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                              child: 
                                Text("Informasi Keuangan",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        fontFamily: 'Poppins')
                                )
                            )
                          ),
                        // Pendapatan
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: 
                                Text("Pendapatan",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        fontFamily: 'Poppins')
                                )
                            )
                          ),
                          // TEXTFORMFIELD Pendapatan
                          // DROPDOWN BUTTOM FORM FIELD JENIS ANGSURAN
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: 
                            DropdownButtonFormField(     
                                    // decoration
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none)
                                    ),
                                    // text style
                                    style: const TextStyle(fontSize: 15,color: Colors.black, fontFamily: 'Poppins'),
                                    // Down Arrow Icon
                                    icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black),    
                                      
                                    // Array list of items
                                    items: items.map((String items) {
                                      return DropdownMenuItem(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                    // After selecting the desired option,it will
                                    // change button value to selected value
                                    onChanged: (String? newValue) { 
                                      setState(() {
                                        dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                          ),

                        // // Laporan Kredit
                        // Align(
                        //     alignment: Alignment.centerLeft,
                        //     child: Padding(
                        //       padding: EdgeInsets.only(left: 20, top: 10),
                        //       child: 
                        //         Text("Laporan Kredit",
                        //           overflow: TextOverflow.ellipsis,
                        //           textAlign: TextAlign.left,
                        //           style: const TextStyle(
                        //                 fontSize: 16,
                        //                 fontWeight: FontWeight.w600,
                        //                 color: Colors.black,
                        //                 fontFamily: 'Poppins')
                        //         )
                        //     )
                        //   ),
                        //   // TEXTFORMFIELD Laporan Kredit
                        //   Padding(
                        //     padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        //     child: 
                        //     FilledButton(                         
                        //       style: TextButton.styleFrom(
                        //         foregroundColor: Colors.black,
                        //         backgroundColor: Colors.white,
                        //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        //         padding: const EdgeInsets.only(left: 85, right: 85, top:12, bottom: 12),
                        //         textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                        //       ),
                        //       onPressed: () { // routing on pressed sign Up
                        //         // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        //         //   return DaftarInvestorScreen();
                        //         // }));
                        //       }, 
                        //       child: 
                        //       const Text("Masukkan File"),
                        //     ), 
                        //     // TextFormField(
                        //     //   // controller: emailloginController,
                        //     //   cursorColor: Colors.black,
                        //     //   style: TextStyle(
                        //     //     fontSize: 15, color: Colors.black, fontFamily: 'Poppins'
                        //     //   ),
                        //     //   decoration: InputDecoration(
                        //     //     hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontFamily: 'Poppins'),
                        //     //     contentPadding: EdgeInsets.all(10),
                        //     //     filled: true,
                        //     //     fillColor: Colors.white,
                        //     //     border: OutlineInputBorder(
                        //     //       borderRadius: BorderRadius.circular(10),
                        //     //       borderSide: BorderSide.none,
                        //     //     )
                        //     //   ),
                        //     // ),
                        //   ), 

                        // Rekening Bank
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: 
                                Text("Rekening Bank",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        fontFamily: 'Poppins')
                                )
                            )
                          ),
                          // TEXTFORMFIELD Rekening Bank
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: 
                            TextFormField(
                              controller: rekeningBankController,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                fontSize: 15, color: Colors.black, fontFamily: 'Poppins'
                              ),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ), 
                          ]
                        ),
                        ),
                      
                      FilledButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.yellow,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(90, 85))),
                          padding: const EdgeInsets.only(left: 120, top: 10, right: 120, bottom: 10),
                          textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                        ),
                        onPressed: () { // routing on pressed Daftar
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return MemberActor();
                          }));
                        }, 
                        child: 
                          const Text("Daftar"),
                      ) ,

                      ]    
              ),
            ),
          ),
        ),
      ),
    );
  }
}
