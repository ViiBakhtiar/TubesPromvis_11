// ignore_for_file: use_key_in_widget_constructors, prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Postingan{
  final String maksimum_pendanaan;
  final String bagi_hasil;
  final String tenor;
  final int pendanaan_ke;
  final String jenis_angsuran;
  final String jumlah_angsuran;
  final String penghasilan_perbulan;

  Postingan({
    required this.maksimum_pendanaan,
    required this.bagi_hasil,
    required this.tenor,
    required this.pendanaan_ke,
    required this.jenis_angsuran,
    required this.jumlah_angsuran,
    required this.penghasilan_perbulan,
  });

  Map<String, dynamic> toJson(){
    return{
      'maksimum_pendanaan': maksimum_pendanaan,
      'bagi_hasil': bagi_hasil,
      'tenor': tenor,
      'pendanaan_ke': pendanaan_ke,
      'jenis_angsuran': jenis_angsuran,
      'jumlah_angsuran': jumlah_angsuran,
      'penghasilan_perbulan': penghasilan_perbulan,
    };
  }
}

class PostinganBaruMemberScreen extends StatefulWidget {
  @override
  State<PostinganBaruMemberScreen> createState() => _PostinganBaruMemberScreenState();
}

class _PostinganBaruMemberScreenState extends State<PostinganBaruMemberScreen> {
  // List of items in our dropdown menu
  var items = [    
    'Harian',
    'Mingguan',
    'Bulanan',
  ];

  final TextEditingController maksimumPendanaanController = TextEditingController();
  final TextEditingController bagiHasilController = TextEditingController();
  final TextEditingController tenorController = TextEditingController();
  final TextEditingController pendanaanKeController = TextEditingController();
  final TextEditingController jenisAngsuranController = TextEditingController();
  final TextEditingController jumlahAngsuranController = TextEditingController();
  final TextEditingController penghasilanPerbulanController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> _postinganMember() async{
    final String apiUrl = 'http://127.0.0.1:8000/postingan';

    final Postingan postingan = Postingan(
      maksimum_pendanaan: maksimumPendanaanController.text, 
      bagi_hasil: bagiHasilController.text, 
      tenor: tenorController.text, 
      pendanaan_ke: int.parse(pendanaanKeController.text), 
      jenis_angsuran: jenisAngsuranController.text, 
      jumlah_angsuran: jumlahAngsuranController.text, 
      penghasilan_perbulan: penghasilanPerbulanController.text
    );
    
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(postingan.toJson()),
    );

    if(response.statusCode == 200){
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
    }
    else{
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

                              // TEXT BUAT AKUN
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: 
                          Text(
                              "Buat Akun",
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
                              controller: maksimumPendanaanController,
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
                              controller: bagiHasilController,
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
                              controller: tenorController,
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
                              controller: pendanaanKeController,
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
                              controller: jumlahAngsuranController,
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
                              controller: penghasilanPerbulanController,
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

                          // BUTTON SIMPAN PERUBAHAN
                          FilledButton(                         
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.yellow,
                              padding: const EdgeInsets.only(left: 70, right: 70),
                              textStyle: const TextStyle(fontSize: 16, fontFamily: 'Poppins'),
                            ),
                            onPressed: () { // routing on pressed simpan perubahan
                              // Navigator.pushNamed(context, postinganMemberTentangScreen);
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
