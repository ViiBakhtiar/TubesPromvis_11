

import 'package:flutter/material.dart';
import 'package:frontend_tubes/actor/member_actor.dart';
import 'package:frontend_tubes/view/login_screen.dart';
import 'package:frontend_tubes/view/daftar_investor_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class User{
  final String nama_lengkap;
  final String email;
  final String password;
  final String no_hp;
  final String alamat;
  final String pekerjaan;
  final String no_ktp;
  final String npwp;
  final int pendapatan;
  final String sumber_pendapatan;
  final String rekening_bank;

  User({
    required this.nama_lengkap,
    required this.email,
    required this.password,
    required this.no_hp,
    required this.alamat,
    required this.pekerjaan,
    required this.no_ktp,
    required this.npwp,
    required this.pendapatan,
    required this.sumber_pendapatan,
    required this.rekening_bank,
  });

  Map<String, dynamic> toJson() {
    return {
      'nama_lengkap': nama_lengkap,
      'email': email,
      'password': password,
      'no_hp': no_hp,
      'alamat': alamat,
      'pekerjaan': pekerjaan,
      'no_ktp': no_ktp,
      'npwp': npwp,
      'pendapatan': pendapatan,
      'sumber_pendapatan': sumber_pendapatan,
      'rekening_bank': rekening_bank,
    };
  }
}

class SignupScreen extends StatefulWidget{
  const SignupScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _SignupScreen createState() => _SignupScreen();
}
class _SignupScreen extends State<SignupScreen> {
  final TextEditingController _nama_lengkapController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _no_hpController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _pekerjaanController = TextEditingController();
  final TextEditingController _no_ktpController = TextEditingController();
  final TextEditingController _npwpController = TextEditingController();
  final TextEditingController _pendapatanController = TextEditingController();
  final TextEditingController _sumber_pendapatanController =TextEditingController();
  final TextEditingController _rekening_bankController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> _registerUser() async {
    final String apiUrl = 'http://127.0.0.1:8000/register';

    final User user = User(
      nama_lengkap: _nama_lengkapController.text,
      email: _emailController.text,
      password: _passwordController.text,
      no_hp: _no_hpController.text,
      alamat: _alamatController.text,
      pekerjaan: _pekerjaanController.text,
      no_ktp: _no_ktpController.text,
      npwp: _npwpController.text,
      pendapatan: int.parse(_pendapatanController.text),
      sumber_pendapatan: _sumber_pendapatanController.text,
      rekening_bank: _rekening_bankController.text,
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
            content: const Text('User registered successfully'),
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
    } else {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Failed to register user'),
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
                      children: [
                        // LEFT ARROW NAV
                        Padding(padding: const EdgeInsets.fromLTRB(0, 0, 325, 0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            }, // Image tapped
                            splashColor: Colors.white70, // Splash color over image
                            child: Ink.image(
                              fit: BoxFit.fill, // Fixes border issues
                              width: 10,
                              height: 20,
                              image: const AssetImage(
                                'assets/images/img_arrowleft.png',
                              ),
                            ),
                          ),
                        ),

                        // TEXT BUAT AKUN
                        const Padding(padding: EdgeInsets.fromLTRB(0, 35, 225, 0),
                        child: 
                          Text(
                              "Buat Akun",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                      fontFamily: 'Poppins'),    
                          ),
                        ),
                        
                        const SizedBox(height: 10), // spacer
                        // NAMA LENGKAP
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: 
                                Text("Nama Lengkap",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        fontFamily: 'Poppins')
                                )
                            )
                          ),
                          // TEXTFORMFIELD NAMA LENGKAP
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                            child: 
                            TextFormField(
                              controller: _nama_lengkapController,
                              decoration: InputDecoration(
                                hintText: "Budi",
                                hintStyle: const TextStyle(fontSize: 13, color: Colors.grey, fontFamily: 'Poppins'),
                                contentPadding: const EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ),

                        // EMAIL
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: 
                                Text("Email",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        fontFamily: 'Poppins')
                                )
                            )
                          ),
                          // TEXTFORMFIELD EMAIL
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                            child: 
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                hintText: "email@gmail.com",
                                hintStyle: const TextStyle(fontSize: 13, color: Colors.grey, fontFamily: 'Poppins'),
                                contentPadding: const EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ), 

                        // NO TELEPON
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: 
                                Text("No Telepon",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        fontFamily: 'Poppins')
                                )
                            )
                          ),
                          // TEXTFORMFIELD NO TELEPON
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                            child: 
                            TextFormField(
                              controller: _no_hpController,
                              decoration: InputDecoration(
                                hintText: "08**********",
                                hintStyle: const TextStyle(fontSize: 13, color: Colors.grey, fontFamily: 'Poppins'),
                                contentPadding: const EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ), 
                          
                          // PASSWORD
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: 
                                Text("Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, 
                                                         color: Colors.black, fontFamily: 'Poppins')
                                )
                            )
                          ),

                          // TEXTFORMFIELD PASSWORD
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 30),
                            child: 
                            TextFormField(
                              controller: _passwordController,
                              decoration: InputDecoration(
                                hintText: "Masukkan 8 Karakter",
                                hintStyle: const TextStyle(fontSize: 13, color: Colors.grey, fontFamily: 'Poppins'),
                                contentPadding: const EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ),

                          // BUTTON SIGN UP
                          FilledButton(                         
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                              padding: const EdgeInsets.only(left: 70, right: 70),
                              textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                            ),
                            onPressed: () { // routing on pressed sign Up
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                return DaftarInvestorScreen();
                              }));
                            }, 
                            child: 
                            const Text("Sign Up"),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("Sudah punya akun?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey,
                                                fontFamily: 'Poppins'),
                                        ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        minimumSize: Size.zero,
                                        padding: EdgeInsets.zero,
                                        textStyle: const TextStyle(fontSize: 12, fontFamily: 'Poppins'),
                                      ),
                                      onPressed: (){ // move to login screen
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                          return LoginScreen();
                                        }));
                                      },
                                      child: const Text("Login"),
                                    )
                                  ]
                              )
                          )
                      ]
              )
            )
          )
        )
      )
    );
  }

// routes (sementara)
  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';
  static const String berandaInvestorScreen = '/beranda_investor_screen'; // sementara
  static const String berandaMemberScreen = '/beranda_member_screen'; // sementara
}
