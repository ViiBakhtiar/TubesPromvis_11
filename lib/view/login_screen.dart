// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:frontend_tubes/actor/investor_actor.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> _loginUser() async {
    final String url = 'http://127.0.0.1:8000/login';
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': emailController.text,
        'password': passwordController.text,
      }),
    );
    
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      final message = jsonResponse['message'];

      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Login'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                if (message == 'Logged in as member') {
                  // Navigasi ke halaman home member
                  Navigator.pushReplacementNamed(
                      context, '/beranda_member_screen');
                } else if (message == 'Logged in as investor') {
                  // Navigasi ke halaman home investor
                  Navigator.pushReplacementNamed(
                      context, '/beranda_investor_screen');
                }
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    } else {
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Error'),
          content: Text('Login failed'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
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
                              image: AssetImage(
                                'assets/images/img_arrowleft.png',
                              ),
                            ),
                          ),
                        ),

                        // IMAGE
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                          child:
                          Image.asset('assets/images/img_password.png',
                          width: 250, height: 250, fit: BoxFit.fill,),
                        ),

                        // TEXT LOGIN NOW
                        Text(
                              "Login Now",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black,
                                      fontFamily: 'Poppins'),    
                        ),
                        
                        SizedBox(height: 30),
                        // EMAIL
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: 
                                Text("Email",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
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
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: "email@gmail.com",
                                hintStyle: TextStyle(fontSize: 13, color: Colors.grey, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.all(10),
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
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: 
                                Text("Password",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, 
                                                         color: Colors.black, fontFamily: 'Poppins')
                                )
                            )
                          ),

                          // TEXTFORMFIELD PASSWORD
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 30),
                            child: 
                            TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                hintText: "Masukkan 8 Karakter",
                                hintStyle: TextStyle(fontSize: 13, color: Colors.grey, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ),

                          // BUTTON
                          FilledButton(                         
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                              padding: const EdgeInsets.only(left: 75, right: 75),
                              textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                            ),
                            onPressed: _loginUser,
                              child: 
                              const Text("Login"),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Belum punya akun?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
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
                                      onPressed: (){ // move to sign up screen
                                        Navigator.pushNamed(context, signupScreen);
                                      },
                                      child: const Text("Sign Up"),
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
