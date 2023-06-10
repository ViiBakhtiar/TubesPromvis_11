// // ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// class ChatItem extends StatelessWidget{
//   ChatItem();
  
//   @override
//   Widget build(BuildContext context){
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(padding: EdgeInsets.only(right: 80),
//         child: ClipPath(
//           clipper: UpperNipMessageClipper(MessageType.receiver),
//           child: Container(
//             padding: EdgeInsets.all(20),
//             child:Text("Hi, Developer",
//               style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
//             ), 
//           ),
//         ),
//         ),
//         Container(
//           alignment: Alignment.centerRight,
//           child: Padding(padding: EdgeInsets.only(top: 20, left: 80),
//           child: ClipPath(
//             clipper: LowerNipMessageClipper(MessageType.send),
//             child: Container(
//               padding: EdgeInsets.only(left: 20, top: 10, bottom: 25, right: 20),
//               child:Text("Hi, Developer",
//                 style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black, fontFamily: 'Poppins'),
//               ), 
//             ),
//           ),
//           ),
//         ),
//       ],
//     );
//   }
// }