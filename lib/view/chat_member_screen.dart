// ignore_for_file: use_key_in_widget_constructors, prefer_final_fields, prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore: unused_import

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/daftar_chat_member_screen.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

class ChatMemberScreen extends StatefulWidget {
  @override
  State<ChatMemberScreen> createState() => _ChatMemberScreenState();
}

class _ChatMemberScreenState extends State<ChatMemberScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        // name bar
        appBar: 
          AppBar(
            toolbarHeight: 100,
            elevation: 5,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            flexibleSpace: SafeArea(
              child: Container(
                padding: EdgeInsets.only(right: 16, top: 0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return DaftarChatMemberScreen();
                        }));
                      },
                      icon: Icon(Icons.arrow_back_ios_new ,color: Colors.black,),
                    ),
                    SizedBox(width: 2,),
                    SizedBox(
                      width: 60,
                      child: Image.asset('assets/images/img_pic_ujang.png'),
                    ),
                    SizedBox(width: 12,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Ujang Manujang",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
                          SizedBox(height: 3),
                          Padding(
                            padding: EdgeInsets.only(right: 31),
                            // ONLINE
                            child: Row(
                              children: [
                                Container(
                                  height: (13),
                                  width: (13),
                                  decoration: BoxDecoration(
                                    color: Colors.green.shade300,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Online",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        body: 
          Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 100),
              physics: AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 80),
                    child: 
                    ChatBubble(
                          clipper: ChatBubbleClipper4(type: BubbleType.receiverBubble),
                          backGroundColor: Colors.yellow[400],
                          margin: EdgeInsets.only(top: 20),
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.7,
                            ),
                            child: Text(
                              "Hi Member",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: 
                      Padding(padding: EdgeInsets.only(top: 20, left: 80),
                      child: 
                        ChatBubble(
                          clipper: ChatBubbleClipper4(type: BubbleType.sendBubble),
                          alignment: Alignment.topRight,
                          backGroundColor: Colors.blue[500],
                          child: Container(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * 0.7,
                            ),
                            child: Text(
                              "Hi Investor",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),

            // chat bottom bar
            Padding(padding: MediaQuery.of(context).viewInsets, // padding for bottom bar to stay on top of keyboard
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                      BoxShadow(
                        offset: Offset(0, -1),
                        blurRadius: 6,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(width: 15,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Ketik pesan",
                          hintStyle: TextStyle(color: Colors.black54),
                          border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    FloatingActionButton(
                      onPressed: (){
                        
                      },
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      child: Icon(Icons.send, color: Colors.blueGrey,size: 30),
                    ),
                  ],
                  
                ),
              ),
            ),
            )
          ],
        ),

      )
    );
  }
}
