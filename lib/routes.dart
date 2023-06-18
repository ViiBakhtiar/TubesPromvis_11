// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// import screen
import 'package:frontend_tubes/view/onboard_screen.dart';
import 'package:frontend_tubes/view/login_screen.dart';
import 'package:frontend_tubes/view/signup_screen.dart';

// daftar
import 'package:frontend_tubes/view/daftar_investor_screen.dart';
import 'package:frontend_tubes/view/daftar_member_screen.dart';

//import actor
import 'package:frontend_tubes/actor/investor_actor.dart';
import 'package:frontend_tubes/actor/member_actor.dart';
import 'package:frontend_tubes/actor/visitor_actor.dart';


// Investor
import 'package:frontend_tubes/view/beranda_investor_screen.dart';
import 'package:frontend_tubes/view/postingan_investor_screen.dart';
import 'package:frontend_tubes/view/portofolio1_investor_screen.dart';
import 'package:frontend_tubes/view/portofolio2_investor_screen.dart';
import 'package:frontend_tubes/view/detail_umkm_tentang_investor_screen.dart';

import 'package:frontend_tubes/view/detail_umkm_riwayat_investor_screen.dart';

import 'package:frontend_tubes/view/laporan1_investor_screen.dart';
import 'package:frontend_tubes/view/laporan2_investor_screen.dart';
import 'package:frontend_tubes/view/profil_investor_screen.dart';

// Member
import 'package:frontend_tubes/view/beranda_member_screen.dart';
import 'package:frontend_tubes/view/postingan_member_tentang_screen.dart';
import 'package:frontend_tubes/view/postingan_member_riwayat_screen.dart';
import 'package:frontend_tubes/view/postingan_member_baru_screen.dart';
import 'package:frontend_tubes/view/aktivitas1_member_screen.dart';
import 'package:frontend_tubes/view/aktivitas2_member_screen.dart';
import 'package:frontend_tubes/view/laporan1_member_screen.dart';
import 'package:frontend_tubes/view/laporan2_member_screen.dart';
import 'package:frontend_tubes/view/profil_member_screen.dart';

// Visitor
import 'package:frontend_tubes/view/beranda_visitor_screen.dart';
import 'package:frontend_tubes/view/postingan_visitor_screen.dart';
import 'package:frontend_tubes/view/portofolio_visitor_screen.dart';
import 'package:frontend_tubes/view/laporan_visitor_screen.dart';
import 'package:frontend_tubes/view/profil_visitor_screen.dart';

// Chat
import 'package:frontend_tubes/view/daftar_chat_investor_screen.dart';
import 'package:frontend_tubes/view/daftar_chat_member_screen.dart';
import 'package:frontend_tubes/view/chat_investor_screen.dart';
import 'package:frontend_tubes/view/chat_member_screen.dart';

// dialog
import 'package:frontend_tubes/view/items/dialog_dana.dart';





class AppRoutes {
  static const String onboardScreen = '/onboard_screen';
  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';

  // daftar page
  static const String daftarInvestorScreen = '/daftar_investor_screen';
  static const String daftarMemberScreen = '/daftar_member_screen';

  // actor
  static const String investorActor = '/investor_actor';
  static const String chatInvestorActor = '/chat_investor_actor';

  static const String memberActor = '/member_actor';
  static const String visitorActor = '/visitor_actor';

  // investor
  static const String berandaInvestorScreen = '/beranda_investor_screen';
  static const String postinganInvestorScreen = '/postingan_investor_screen';

  static const String detailUmkmRiwayatInvestorScreen = '/detail_umkm_riwayat_investor_screen';
  static const String detailUmkmTentangInvestorScreen = '/detail_umkm_tentang_investor_screen';
  static const String portofolio1InvestorScreen = '/portofolio1_investor_screen';
  static const String portofolio2InvestorScreen = '/portofolio2_investor_screen';
  static const String laporan1InvestorScreen = '/laporan1_investor_screen';
  static const String laporan2InvestorScreen = '/laporan2_investor_screen';
  static const String profilInvestorScreen = '/profil_investor_screen';

  // member
  static const String berandaMemberScreen = '/beranda_member_screen';
  static const String postinganMemberTentangScreen = '/postingan_member_tentang_screen';
  static const String postinganMemberRiwayatScreen = '/postingan_member_riwayat_screen';
  static const String postinganMemberBaruScreen = '/postingan_member_baru_screen';
  static const String aktivitas1MemberScreen = '/aktivitas1_member_screen';
  static const String aktivitas2MemberScreen = '/aktivitas2_member_screen';
  static const String laporan1MemberScreen = '/laporan1_member_screen';
  static const String laporan2MemberScreen = '/laporan2_member_screen';
  static const String profilMemberScreen = '/profil_member_screen';
  
  // visitor
  static const String berandaVisitorScreen = '/beranda_visitor_screen';
  static const String postinganVisitorScreen = '/postingan_visitor_screen';
  static const String portofolioVisitorScreen = '/portofolio_visitor_screen';
  static const String laporanVisitorScreen = '/laporan_visitor_screen';
  static const String profilVisitorScreen = '/profil_visitor_screen'; 

  // chat
  static const String daftarChatInvestorScreen = '/daftar_chat_investor_screen'; 
  static const String daftarChatMemberScreen = '/daftar_chat_member_screen'; 
  static const String chatInvestorScreen = '/chat_investor_screen';
  static const String chatMemberScreen = '/chat_member_screen';

  // dialog
  static const String dialogDana = '/dialog_dana';
  


  static Map<String, WidgetBuilder> routes = {
    onboardScreen: (context) => OnboardScreen(),
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    
    // daftar
    daftarInvestorScreen: (context) => DaftarInvestorScreen(),
    daftarMemberScreen: (context) => DaftarMemberScreen(),

    // actor
    investorActor:(context) => InvestorActor(),
    memberActor:(context) => MemberActor(),
    visitorActor:(context) => VisitorActor(),
    
    // investor 
    berandaInvestorScreen: (context) => BerandaInvestorScreen(),
    postinganInvestorScreen:(context) => PostinganInvestorScreen(),

    detailUmkmRiwayatInvestorScreen:(context) => DetailUmkmRiwayatInvestorScreen(),
    detailUmkmTentangInvestorScreen:(context) => DetailUmkmTentangInvestorScreen(),

    portofolio1InvestorScreen:(context) => Portofolio1InvestorScreen(),
    portofolio2InvestorScreen:(context) => Portofolio2InvestorScreen(),
    laporan1InvestorScreen:(context) => Laporan1InvestorScreen(),
    laporan2InvestorScreen:(context) => Laporan2InvestorScreen(),
    profilInvestorScreen:(context) => ProfilInvestorScreen(),

    // member
    berandaMemberScreen:(context) => BerandaMemberScreen(),
    postinganMemberTentangScreen:(context) => PostinganMemberTentangScreen(),
    postinganMemberRiwayatScreen:(context) => PostinganMemberRiwayatScreen(),
    postinganMemberBaruScreen:(context) => PostinganMemberBaruScreen(),
    aktivitas1MemberScreen:(context) => Aktivitas1MemberScreen(),
    aktivitas2MemberScreen:(context) => Aktivitas2MemberScreen(),
    laporan1MemberScreen:(context) => Laporan1MemberScreen(),
    laporan2MemberScreen:(context) => Laporan2MemberScreen(),
    profilMemberScreen:(context) => ProfilMemberScreen(),

    // visitor
    berandaVisitorScreen:(context) => BerandaVisitorScreen(),
    postinganVisitorScreen:(context) => PostinganVisitorScreen(),
    portofolioVisitorScreen:(context) => PortofolioVisitorScreen(),
    laporanVisitorScreen:(context) => LaporanVisitorScreen(),
    profilVisitorScreen:(context) => ProfilVisitorScreen(),

    // chat
    daftarChatInvestorScreen:(context) => DaftarChatInvestorScreen(),
    daftarChatMemberScreen:(context) => DaftarChatMemberScreen(),
    chatInvestorScreen: (context) => ChatInvestorScreen(),
    chatMemberScreen: (context) => ChatMemberScreen(),

   // dialog
   dialogDana: (context) => DialogDana(),


  };
}