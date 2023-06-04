// ignore_for_file: use_key_in_widget_constructors, prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend_tubes/actor/member_actor.dart';
import 'package:frontend_tubes/view/daftar_member_screen.dart';

class DaftarInvestorScreen extends StatefulWidget {
  @override
  State<DaftarInvestorScreen> createState() => _DaftarInvestorScreenState();

}

class _DaftarInvestorScreenState extends State<DaftarInvestorScreen> {
     
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
                                    backgroundColor: Colors.blue.shade700,
                                    side: BorderSide(color: Colors.blue.shade700),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
                                    padding: const EdgeInsets.only(left: 40, top: 9, right: 40, bottom: 9),
                                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold ,fontFamily: 'Poppins'),
                                  ),
                                  
                                  onPressed: () { // routing on pressed Investor
                                            
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
                                    backgroundColor: Colors.blue.shade400,
                                    side: BorderSide(color: Colors.blue.shade400),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
                                    padding: const EdgeInsets.only(left: 40, top: 9, right: 40, bottom: 9),
                                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold , fontFamily: 'Poppins'),
                                  ),
                                  onPressed: () { // routing on pressed Member
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                      return DaftarMemberScreen();
                                    }));
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
                        // NAMA LENGKAP
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: 
                                Text("Nama Lengkap",
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
                          // TEXTFORMFIELD Nama Lengkap
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: 
                            TextFormField(
                              // controller: emailloginController,
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
                              // controller: emailloginController,
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

                        // Pekerjaan
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: 
                                Text("Pekerjaan",
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
                          // TEXTFORMFIELD Pekerjaan
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: 
                            TextFormField(
                              // controller: emailloginController,
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
                            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                            child:
                            FilledButton(                         
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.only(left: 85, right: 85, top:12, bottom: 12),
                                textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                              ),
                              onPressed: () { // routing on pressed sign Up
                                // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                //   return DaftarInvestorScreen();
                                // }));
                              }, 
                              child: 
                              const Text("Masukkan File"),
                            ), 
                            // TextFormField(
                            //   // controller: passwordloginController,
                            //   cursorColor: Colors.black,
                            //   style: TextStyle(
                            //     fontSize: 15, color: Colors.black, fontFamily: 'Poppins'
                            //   ),
                            //   decoration: InputDecoration(
                            //     hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontFamily: 'Poppins'),
                            //     contentPadding: EdgeInsets.all(10),
                            //     filled: true,
                            //     fillColor: Colors.white,
                            //     border: OutlineInputBorder(
                            //       borderRadius: BorderRadius.circular(10),
                            //       borderSide: BorderSide.none,
                            //     )
                            //   ),
                            // ),
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
                            FilledButton(                         
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.only(left: 85, right: 85, top:12, bottom: 12),
                                textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                              ),
                              onPressed: () { // routing on pressed sign Up
                                // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                //   return DaftarInvestorScreen();
                                // }));
                              }, 
                              child: 
                              const Text("Masukkan File"),
                            ), 
                            // TextFormField(
                            //   // controller: passwordloginController,
                            //   cursorColor: Colors.black,
                            //   style: TextStyle(
                            //     fontSize: 15, color: Colors.black, fontFamily: 'Poppins'
                            //   ),
                            //   decoration: InputDecoration(
                            //     hintStyle: TextStyle(fontSize: 15, color: Colors.grey.shade700, fontFamily: 'Poppins'),
                            //     contentPadding: EdgeInsets.all(10),
                            //     filled: true,
                            //     fillColor: Colors.white,
                            //     border: OutlineInputBorder(
                            //       borderRadius: BorderRadius.circular(10),
                            //       borderSide: BorderSide.none,
                            //     )
                            //   ),
                            // ),
                          ),
                          ],
                        ),
                      ),


                      // INFORMASI KEUANGAN
                      Container(
                        height: 390,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(left:35,top: 15, bottom: 35, right:35),
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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: 
                            TextFormField(
                              // controller: emailloginController,
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

                        // Sumber Pendapatan
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, top: 10),
                              child: 
                                Text("Sumber Pendapatan",
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
                          // TEXTFORMFIELD Sumber Pendapatan
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: 
                            TextFormField(
                              // controller: emailloginController,
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
                              // controller: emailloginController,
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

                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black,
                            side: BorderSide(color: Colors.yellow),
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
