// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
TextEditingController emailloginController = TextEditingController();
TextEditingController passwordloginController = TextEditingController();
GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                              controller: emailloginController,
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
                              controller: passwordloginController,
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
                            onPressed: () { // routing on pressed login
                              Navigator.pushNamed(context, berandaInvestorScreen);
                              // Navigator.pushNamed(context, berandaMemberScreen);
                            }, 
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