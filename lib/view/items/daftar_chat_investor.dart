// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:frontend_tubes/view/chat_investor_screen.dart';

// ignore: must_be_immutable
class DaftarChatInvestor extends StatelessWidget {
  const DaftarChatInvestor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //IMAGE PROFILE PIC
        InkWell(                        
          onTap: () {                  
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return ChatInvestorScreen();
            })); 
          },                      
          child: 
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child:
            Image.asset('assets/images/img_pic_siti.png',
            width: 60, height: 60, fit: BoxFit.fill,),
          ),                       
        ),
        
        // chat
        InkWell(
        onTap: () {                  
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return ChatInvestorScreen();
            }));
          }, 
        child: Padding(
          padding: EdgeInsets.only(bottom: 7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Siti Cahyani",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black, fontFamily: 'Poppins'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 111,
                      top: 4,
                      bottom: 4,
                    ),
                    child: Text(
                      "10.00",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey, fontFamily: 'Poppins')
                    ),
                  )
              
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 7,
                  right: 4,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 4,
                      ),
                      child: Text(
                        "Saya akan memberikan kabar",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey, fontFamily: 'Poppins')
                      ),
                    ),
                    Container(
                      width: 25,
                      margin: EdgeInsets.only(left: 30),
                      padding: EdgeInsets.only(left: 10,top: 1,right: 10,bottom: 1,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent.shade700,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "1",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white, fontFamily: 'Poppins')
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ),
      ],
    );
  }
}
