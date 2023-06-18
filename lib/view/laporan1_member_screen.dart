// ignore_for_file: , prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
// import 'package:decorated_dropdownbutton/decorated_dropdownbutton.dart';
import 'package:frontend_tubes/view/laporan2_member_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Laporan {
  final int nomor;
  final String nama_transaksi;
  final String nominal_transaksi;

  Laporan({
    required this.nomor,
    required this.nama_transaksi,
    required this.nominal_transaksi,
  });

  factory Laporan.fromJson(Map<String, dynamic> json) {
    return Laporan(
      nomor: json['nomor'],
      nama_transaksi: json['nama_transaksi'],
      nominal_transaksi: json['ninal_transaksi'],
    );
  }
}

const List<String> list = <String>[
  'Pilih Bulan',
  'Januari',
  'Februari',
  'Maret',
  'April',
  'Mei',
  'Juni',
  'Juli',
  'Agustus',
  'September',
  'Oktober',
  'November',
  'Desember'
];

class Laporan1MemberScreen extends StatefulWidget {
  const Laporan1MemberScreen({Key? key}) : super(key: key);

  @override
  State<Laporan1MemberScreen> createState() => _Laporan1MemberScreenState();
}

class _Laporan1MemberScreenState extends State<Laporan1MemberScreen> {
  // Initial Selected Value
  String dropdownvalue = list.first;
  final url = 'http://127.0.0.1:8000';
  final String apiUrl = 'http://127.0.0.1:8000/laporan';

  Future<Laporan> fetchLaporan() async {
    final response = await http.get(Uri.parse("url"));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return Laporan.fromJson(jsonData);
    } else {
      throw Exception('Failed to fetch Laporan');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding:
                const EdgeInsets.only(left: 0, top: 25, right: 0, bottom: 25),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Row(children: [
                // PORTOFOLIO
                Padding(
                  padding: EdgeInsets.fromLTRB(26, 10, 50, 20),
                  child: Text(
                    "Laporan Keuangan",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontFamily: 'Poppins'),
                  ),
                ),
              ]),

              // BUTTON TAB HISTORI TRANSAKSI PEMINJAMAN & LAPORAN BULANAN
              Container(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 0, bottom: 20),
                child: Column(children: [
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
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            padding: const EdgeInsets.only(
                                left: 23, top: 5, right: 23, bottom: 5),
                            textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                          onPressed: () {
                            // routing on pressed histori transaksi peminjaman
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            //   return Laporan1MemberScreen();
                            // }));
                          },
                          child: const Text(
                            "Histori Transaksi\nPeminjaman",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue.shade400,
                            side: BorderSide(color: Colors.blue.shade400),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            padding: const EdgeInsets.only(
                                left: 50, top: 5, right: 50, bottom: 5),
                            textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'),
                          ),
                          onPressed: () {
                            // routing on pressed laporan bulanan
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Laporan2MemberScreen();
                            }));
                          },
                          child: const Text(
                            "Laporan\nBulanan",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              ),

              Container(
                padding: const EdgeInsets.only(right: 35, bottom: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 180,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Januari 2023',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                height: 1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Spacer(),

                        // DROPDOWN BUTTON
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: Colors
                                .yellow, //background color of dropdown button/border of dropdown button
                            borderRadius: BorderRadius.circular(
                                50), //border raiuds of dropdown button
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: DropdownButton(
                              underline: Container(), //remove underline
                              // hint: Text("Pilih Bulan", selectionColor: Colors.black,),
                              value: dropdownvalue,
                              // text style
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontFamily: 'Poppins'),
                              // Down Arrow Icon
                              icon: const Icon(Icons.keyboard_arrow_down,
                                  color: Colors.black),
                              // Array list of items
                              items: list.map<DropdownMenuItem<String>>(
                                  (String items) {
                                return DropdownMenuItem<String>(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              // After selecting the desired option,it will change button value to selected value
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              //Table
              Container(
                width: 360,
                height: 532,
                margin:
                    EdgeInsets.only(bottom: 1, left: 20, right: 20, top: 20),
                padding: EdgeInsets.only(left: 1, right: 1),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Table(
                  columnWidths: Map.from({
                    0: FixedColumnWidth(30),
                    1: FixedColumnWidth(100),
                    2: FixedColumnWidth(100)
                  }),
                  border: TableBorder.symmetric(
                      inside: BorderSide(width: 2, color: Colors.black26)),
                  children: [
                    TableRow(children: [
                      Container(
                        padding: EdgeInsets.only(top: 25, bottom: 11),
                        child: Text(
                          'No.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          'Nama\nTransaksi',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          'Nominal\nTransaksi',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        padding: EdgeInsets.only(top: 25, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        padding: EdgeInsets.only(top: 25, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        padding: EdgeInsets.only(top: 25, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        padding: EdgeInsets.only(top: 25, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        padding: EdgeInsets.only(top: 25, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        padding: EdgeInsets.only(top: 25, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        padding: EdgeInsets.only(top: 25, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      Container(
                        padding: EdgeInsets.only(top: 25, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 11, bottom: 11),
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
