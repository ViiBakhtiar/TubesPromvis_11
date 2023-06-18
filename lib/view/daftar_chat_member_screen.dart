// ignore_for_file:  prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/items/daftar_chat_member.dart';

class DaftarChatMemberScreen extends StatefulWidget {
  const DaftarChatMemberScreen({super.key});

  @override
  State<DaftarChatMemberScreen> createState() => _DaftarChatMemberScreenState();

}

class _DaftarChatMemberScreenState extends State<DaftarChatMemberScreen> {
@override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
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

                              // TEXT Daftar Chat
                              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: 
                                Text(
                                    "Daftar Chat",
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
                            Align(
                              child:
                              Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.only(left: 31, top: 42, right: 31, bottom: 42),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [ 
                                          Padding(
                                              padding: EdgeInsets.only(left: 1, right: 1),
                                              child: ListView.separated(
                                                  physics: NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  separatorBuilder: (context, index) {
                                                    return Padding(
                                                        padding:
                                                            EdgeInsets.only(top: 18.5, bottom: 18.5),
                                                        child: SizedBox(
                                                            width: 289,
                                                            child: Divider(
                                                                height: 1,
                                                                thickness: 1,
                                                                color: Colors.grey)));
                                                  },
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          return DaftarChatMember();
                                        })),
                                Padding(
                                  padding: EdgeInsets.only(top: 9, bottom: 5),
                                  child: 
                                    Divider(
                                      height: (1),
                                      thickness: (1),
                                      color: Colors.grey,
                                    )
                                )
                              ]
                              )
                              
                              )
                            )
                          ]
                          )
                        ),
                
                      
            ),
          ),
        );
  }
}
