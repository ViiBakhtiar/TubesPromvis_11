// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:frontend_tubes/routes.dart';
import 'package:frontend_tubes/actor/visitor_actor.dart';
import 'package:frontend_tubes/view/login_screen.dart';
import 'package:frontend_tubes/view/signup_screen.dart';

class OnboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            // IMAGE 
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 90, 0, 15),
              child:
              Image.asset('assets/images/img_logo.png',
              width: 350, height: 250, fit: BoxFit.cover,),
            ),
            // TEXT SELAMAT DATANG
            Text(
                  "Selamat Datang di\nU.Vest!",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontFamily: 'Poppins'),    
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.fromLTRB(45, 0, 45, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // BUTTON LOGIN
                    FilledButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                      ),
                      onPressed: () { // routing on pressed login
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return LoginScreen();
                          }));
                       }, 
                      child: 
                      const Text("Login"),
                    ),

                    // BUTTON SIGN UP
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.blue,
                        side: BorderSide(color: Colors.blue),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.elliptical(90, 85))),
                        padding: const EdgeInsets.only(left: 40, top: 9, right: 40, bottom: 9),
                        textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                      ),
                      onPressed: () { // routing on pressed sign up
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return SignupScreen();
                        }));
                       }, 
                      child: 
                      const Text("Sign Up"),
                    ),
                  ]
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 90),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Masuk sebagai",
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
                        onPressed: (){ // move to beranda visitor
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return VisitorActor();
                          }));
                          },
                        child: const Text("Visitor"),
                      )
                    ]
                    )
                  )
            ],
          ),
        ),
      ),
    );
  }

}
