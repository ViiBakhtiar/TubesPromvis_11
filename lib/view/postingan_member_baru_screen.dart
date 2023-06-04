// ignore_for_file: use_key_in_widget_constructors, prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';

class PostinganMemberBaruScreen extends StatefulWidget {
  @override
  State<PostinganMemberBaruScreen> createState() => _PostinganMemberBaruScreenState();


  // GANTI CONTROLLER
  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';
  static const String berandaInvestorScreen = '/beranda_investor_screen'; // sementara
  static const String berandaMemberScreen = '/beranda_member_screen'; // sementara
  static const String postinganMemberScreen='/postingan_member_screen';
}

class _PostinganMemberBaruScreenState extends State<PostinganMemberBaruScreen> {
     

  // List of items in our dropdown menu
  var items = [    
    'Harian',
    'Mingguan',
    'Bulanan',
  ];

TextEditingController nameSignUpController = TextEditingController();

TextEditingController emailSignUpController = TextEditingController();

TextEditingController phoneSignUpController = TextEditingController();

TextEditingController passwordSignUpController = TextEditingController();

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

                              // TEXT postingan baru
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: 
                          Text(
                              "Postingan Baru",
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
                    
                        
                        // MAKSIMUM PENDANAAN
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50, top: 10),
                              child: 
                                Text("Maksimum Pendanaan",
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
                          // TEXTFORMFIELD MAKSIMUM PENDANAAN
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                            child: 
                            TextFormField(
                              // controller: emailloginController,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                fontSize: 15, color: Colors.black, fontFamily: 'Poppins'
                              ),
                              decoration: InputDecoration(
                                hintText: "Rp 1.000.000",
                                hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.blueAccent.shade100,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ),

                        // BAGI HASIL
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50, top: 10),
                              child: 
                                Text("Bagi Hasil",
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
                          // TEXTFORMFIELD BAGI HASIL
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                            child: 
                            TextFormField(
                              // controller: emailloginController,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                fontSize: 15, color: Colors.black, fontFamily: 'Poppins'
                              ),
                              decoration: InputDecoration(
                                hintText: "12%",
                                hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.blueAccent.shade100,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ), 

                        // TENOR
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50, top: 10),
                              child: 
                                Text("Tenor",
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
                          // TEXTFORMFIELD TENOR
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                            child: 
                            TextFormField(
                              // controller: emailloginController,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                fontSize: 15, color: Colors.black, fontFamily: 'Poppins'
                              ),
                              decoration: InputDecoration(
                                hintText: "6 Minggu",
                                hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.blueAccent.shade100,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ), 
                          
                          // PENDANAAN KE-
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50, top: 10),
                              child: 
                                Text("Pendanaan ke-",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, 
                                                         color: Colors.black, fontFamily: 'Poppins')
                                )
                            )
                          ),

                          // TEXTFORMFIELD PENDANAAN KE-
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                            child: 
                            TextFormField(
                              // controller: passwordloginController,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                fontSize: 15, color: Colors.black, fontFamily: 'Poppins'
                              ),
                              decoration: InputDecoration(
                                hintText: "1",
                                hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.blueAccent.shade100,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ),

                          // JENIS ANGSURAN
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50, top: 10),
                              child: 
                                Text("Jenis Angsuran",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, 
                                                         color: Colors.black, fontFamily: 'Poppins')
                                )
                            )
                          ),
                          
                          // DROPDOWN BUTTOM FORM FIELD JENIS ANGSURAN
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                            child: 
                            DropdownButtonFormField(     
                                    // decoration
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(10),
                                      filled: true,
                                      fillColor: Colors.blueAccent.shade100,
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
                                        // dropdownvalue = newValue!;
                                      });
                                    },
                                  ),
                          ),

                          // PENDANAAN JUMLAH ANGSURAN
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50, top: 10),
                              child: 
                                Text("Jumlah Angsuran",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, 
                                                         color: Colors.black, fontFamily: 'Poppins')
                                )
                            )
                          ),

                          // TEXTFORMFIELD JUMLAH ANGSURAN
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                            child: 
                            TextFormField(
                              // controller: passwordloginController,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                fontSize: 15, color: Colors.black, fontFamily: 'Poppins'
                              ),
                              decoration: InputDecoration(
                                hintText: "Rp 112.000",
                                hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.blueAccent.shade100,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )
                              ),
                            ),
                          ),

                          // PENGHASILAN PERBULAN
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50, top: 10),
                              child: 
                                Text("Penghasilan Perbulan",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, 
                                                         color: Colors.black, fontFamily: 'Poppins')
                                )
                            )
                          ),

                          // TEXTFORMFIELD PENGHASILAN PERBULAN
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 50),
                            child: 
                            TextFormField(
                              // controller: passwordloginController,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                fontSize: 15, color: Colors.black, fontFamily: 'Poppins'
                              ),
                              decoration: InputDecoration(
                                hintText: "Rp 1.500.000",
                                hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontFamily: 'Poppins'),
                                contentPadding: EdgeInsets.all(10),
                                filled: true,
                                fillColor: Colors.blueAccent.shade100,
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
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.yellow,
                              padding: const EdgeInsets.only(left: 70, right: 70),
                              textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                            ),
                            onPressed: () { // routing on pressed sign Up
                              // Navigator.pushNamed(context, berandaInvestorScreen);
                              // Navigator.pushNamed(context, berandaMemberScreen);
                            }, 
                            child: 
                            const Text("Simpan Perubahan"),
                          ),
                
                      ]    
              ),
            ),
          ),
        ),
      ),
    );
  }
}
