// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class UserProfile {
  // ignore: non_constant_identifier_names
  final String nama_lengkap;
  final String email;
  final String password;
  final String no_hp;
  final String no_ktp;
  final String npwp;
  final String rekening_bank;
  final String alamat;

  UserProfile({
    // ignore: non_constant_identifier_names
    required this.nama_lengkap,
    required this.email,
    required this.password,
    required this.no_hp,
    required this.no_ktp,
    required this.npwp,
    required this.rekening_bank,
    required this.alamat,
  });

   factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      nama_lengkap: json['nama_lengkap'],
      email: json['email'],
      password: json['password'],
      no_hp: json['no_hp'],
      no_ktp: json['no_ktp'],
      npwp: json['npwp'],
      rekening_bank: json['rekening_bank'],
      alamat: json['alamat'],
    );
  }
}

class ProfilMemberScreen extends StatefulWidget{
  const ProfilMemberScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _ProfilMemberScreenState createState() => _ProfilMemberScreenState();
}

class _ProfilMemberScreenState extends State<ProfilMemberScreen> {
 late Future<UserProfile> _userProfileFuture;
 final url= 'http://127.0.0.1:8000/profile/{user_id}';
  
  @override
  void initState() {
    super.initState();
    _userProfileFuture = fetchUserProfile();
  }

  Future<UserProfile> fetchUserProfile() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return UserProfile.fromJson(jsonData);
    } else {
      throw Exception('Failed to fetch user profile');
    }
  }

@override
  Widget build(BuildContext context) {
    return FutureBuilder<UserProfile>(
        future: _userProfileFuture,
        builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          return Center(child: Text('Data: ${snapshot.hasData}'));
        } else {
          final userProfile = snapshot.data!;
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
                          height: 140,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: double.maxFinite,
                                  // margin: EdgeInsets.only(top: 30),
                                  padding: const EdgeInsets.only(left: 33, top:30, right: 33),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                      bottom: BorderSide(width: 2, color: Colors.grey),
                                    ),
                                  ),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      //IMAGE PROFILE PIC
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                                        child:
                                        Image.asset('assets/images/img_pic_ujang.png',
                                        width: 60, height: 60, fit: BoxFit.fill,),
                                      ),
                                      // TEXT NAME (ganti pake $_name nanti)
                                      Container(
                                        width: 170,
                                        margin: const EdgeInsets.only(top:12 , left: 15, bottom: 12),
                                        child: 
                                          Text(
                                            (snapshot.data!.nama_lengkap),
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),    
                                          ),
                                      ),
                                      const Spacer(),
                                      InkWell(
                                      onTap: () {                  
                                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                        // return ;
                                        // }));
                                      },
                                      child:  Padding(
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
                            ],
                          ),
                        ),
                                          
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          width: double.maxFinite,
                            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                            margin: const EdgeInsets.only(bottom: 20, top: 0),
                            decoration: const BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              bottom: BorderSide(width: 2, color: Colors.grey),
                              ),
                            ),
                          //TABLE INFORMASI AKUN
                          child: Table(
                            defaultColumnWidth: const IntrinsicColumnWidth(),
                            border: TableBorder.all(color: Colors.transparent),
                            children: [
                              TableRow(
                                children: [
                                const Text(
                                "Informasi Akun",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent,
                                        fontFamily: 'Poppins'),   
                                ),
                                TextButton(
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    minimumSize: Size.zero,
                                    padding: const EdgeInsets.only(top:5),
                                    alignment: Alignment.centerRight,
                                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    textStyle: const TextStyle(fontSize: 14, fontFamily: 'Poppins'),
                                  ),
                                  onPressed: (){ // move to edit akun profil
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                    //   return VisitorActor();
                                    // }));
                                    },
                                  child: const Text("Edit Akun"),
                                ),
                              ]),
                              TableRow(
                                children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:
                                  Text(
                                    'Nama Lengkap',
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:
                                  Text(
                                    (snapshot.data!.nama_lengkap), 
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                              ]),
                              TableRow(
                                children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:
                                  Text(
                                    'Email',
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:
                                  Text(
                                    (snapshot.data!.email),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                              ]),
                              TableRow(
                                children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:
                                  const Text(
                                    'Password', 
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:  
                                  const Text(
                                    '********', 
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                              ]),
                              TableRow(
                                children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:
                                  const Text(
                                    'No Telepon',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child: 
                                  Text(
                                    (snapshot.data!.no_hp),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                              ]),
                              TableRow(
                                children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:  
                                  const Text(
                                    'no_ktp',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:  
                                  Text(
                                    (snapshot.data!.no_ktp),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                              ]),
                              TableRow(
                                children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:                                
                                  const Text(
                                    'NPWP',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:
                                  Text(
                                    (snapshot.data!.npwp),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                              ]),
                              TableRow(
                                children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:
                                  const Text(
                                    'Rekening Bank',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:
                                  Text(
                                    (snapshot.data!.rekening_bank),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                              ]),
                              TableRow(
                                children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:
                                  const Text(
                                    'Alamat',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                                  Container(
                                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                                  child:
                                  Text(
                                    (snapshot.data!.alamat),
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontFamily: 'Poppins'))),
                              ])
                            ],
                          ),
                        ),
                      ),

                      Align(
                        child: Container(
                          padding: const EdgeInsets.only(left: 20,right: 20, bottom: 20),
                          // padding: EdgeInsets.all(20),
                            margin: const EdgeInsets.only(bottom: 20),
                            decoration: const BoxDecoration(
                            color: Colors.white,
                            border: Border(

                              bottom: BorderSide(width: 2, color: Colors.grey),
                              ),                                  
                            ),
                            //TABLE DOKUMEN
                          child: Table(
                            border: TableBorder.all(color: Colors.transparent),
                            children: [
                              const TableRow(
                                children: [
                                  Text(
                                    "Dokumen",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent,
                                      fontFamily: 'Poppins'
                                    ),    
                                  ),
                                ]
                              ),

                              TableRow(
                                children: [
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.black,
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.centerLeft,
                                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                                    ),
                                    onPressed: (){ // move to surat perjanjian
                                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                      //   return VisitorActor();
                                      // }));
                                      },
                                    child: const Text("Surat Perjanjian"),
                                  ),
                                ]
                              ),
                            ]  
                          ),
                        )
                      ),

                      Align(
                        child: Container(
                          color: Colors.white,
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          // TABLE INFORMASI LAINNYA
                          child: Table(
                            border: TableBorder.all(color: Colors.transparent),
                            children: [
                              const TableRow(
                                children: [
                                  Text(
                                    "Informasi Lainnya",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blueAccent,
                                      fontFamily: 'Poppins'
                                    ),
                                  ),
                                ]
                              ),

                              TableRow(
                                children: [
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.black,
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.centerLeft,
                                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                                    ),
                                    onPressed: (){ // move to FAQ
                                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                      //   return VisitorActor();
                                      // }));
                                      },
                                    child: const Text("FAQ"),
                                  ),
                                ]
                              ),

                              TableRow(
                                children: [
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.black,
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.centerLeft,
                                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                                    ),
                                    onPressed: (){ // move to Syarat dan Ketentuan
                                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                      //   return VisitorActor();
                                      // }));
                                      },
                                    child: const Text("Syarat dan Ketentuan"),
                                  ),
                                ]
                              ),

                              TableRow(
                                children: [
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.black,
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.centerLeft,
                                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                                    ),
                                    onPressed: (){ // move to Kebijakan Privasi
                                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                      //   return VisitorActor();
                                      // }));
                                      },
                                    child: const Text("Kebijakan Privasi"),
                                  ),
                                ]
                              ),

                              TableRow(
                                children: [
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colors.black,
                                      padding: EdgeInsets.zero,
                                      alignment: Alignment.centerLeft,
                                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                      textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
                                    ),
                                    onPressed: (){ // move to Risiko Pendanaan
                                      // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                      //   return VisitorActor();
                                      // }));
                                      },
                                    child: const Text("Risiko Pendanaan"),
                                  ),
                                ]
                              ),
                            ]  
                          ),
                        )
                      )
                    ]
                )
              )
            )
          )
        );
      }
      }
    );
  }
}