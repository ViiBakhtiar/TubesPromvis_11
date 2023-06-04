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

import 'package:frontend_tubes/view/detail_umkm_tentang_investor_screen.dart';
import 'package:frontend_tubes/view/detail_umkm_riwayat_investor_screen.dart';


import 'package:frontend_tubes/view/profil_investor_screen.dart';

// Member
import 'package:frontend_tubes/view/beranda_member_screen.dart';
import 'package:frontend_tubes/view/postingan_member_tentang_screen.dart';
import 'package:frontend_tubes/view/postingan_member_riwayat_screen.dart';
import 'package:frontend_tubes/view/postingan_member_baru_screen.dart';



import 'package:frontend_tubes/view/profil_member_screen.dart';


// Visitor
import 'package:frontend_tubes/view/beranda_visitor_screen.dart';
import 'package:frontend_tubes/view/postingan_visitor_screen.dart';
import 'package:frontend_tubes/view/portofolio_visitor_screen.dart';
import 'package:frontend_tubes/view/laporan_visitor_screen.dart';
import 'package:frontend_tubes/view/profil_visitor_screen.dart';



class AppRoutes {
  static const String onboardScreen = '/onboard_screen';
  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';

  // daftar page
  static const String daftarInvestorScreen = '/daftar_investor_screen';
  static const String daftarMemberScreen = '/daftar_member_screen';

  // actor
  static const String investorActor = '/investor_actor';
  static const String memberActor = '/member_actor';
  static const String visitorActor = '/visitor_actor';

  // investor
  static const String berandaInvestorScreen = '/beranda_investor_screen';
  static const String postinganInvestorScreen = '/postingan_investor_screen';

  static const String detailUmkmRiwayatInvestorScreen = '/detail_umkm_riwayat_investor_screen';
  static const String detailUmkmTentangInvestorScreen = '/detail_umkm_tentang_investor_screen';

  // static const String portofolioInvestorScreen = '/portofolio_investor_screen';
  // static const String laporanInvestorScreen = '/laporan_investor_screen';
  static const String profilInvestorScreen = '/profil_investor_screen';

  // member
  static const String berandaMemberScreen = '/beranda_member_screen';
  static const String postinganMemberTentangScreen = '/postingan_member_tentang_screen';
  static const String postinganMemberRiwayatScreen = '/postingan_member_riwayat_screen';
  static const String postinganMemberBaruScreen = '/postingan_member_baru_screen';
  // static const String portofolioMemberScreen = '/portofolio_member_screen';
  // static const String laporanMemberScreen = '/laporan_member_screen';
  static const String profilMemberScreen = '/profil_member_screen';
  
  // visitor
  static const String berandaVisitorScreen = '/beranda_visitor_screen';
  static const String postinganVisitorScreen = '/postingan_visitor_screen';
  static const String portofolioVisitorScreen = '/portofolio_visitor_screen';
  static const String laporanVisitorScreen = '/laporan_visitor_screen';
  static const String profilVisitorScreen = '/profil_visitor_screen'; 
  


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

    // portofolioInvestorScreen:(context) => PortofolioInvestorScreen(),
    // laporanInvestorScreen:(context) => LaporanInvestorScreen(),
    profilInvestorScreen:(context) => ProfilInvestorScreen(),

    // member
    berandaMemberScreen:(context) => BerandaMemberScreen(),
    postinganMemberTentangScreen:(context) => PostinganMemberTentangScreen(),
    postinganMemberRiwayatScreen:(context) => PostinganMemberRiwayatScreen(),
    postinganMemberBaruScreen:(context) => PostinganMemberBaruScreen(),
    // portofolioMemberScreen:(context) => PortofolioMemberScreen(),
    // laporanMemberScreen:(context) => LaporanMemberScreen(),
    profilMemberScreen:(context) => ProfilMemberScreen(),

    // visitor
    berandaVisitorScreen:(context) => BerandaVisitorScreen(),
    postinganVisitorScreen:(context) => PostinganVisitorScreen(),
    portofolioVisitorScreen:(context) => PortofolioVisitorScreen(),
    laporanVisitorScreen:(context) => LaporanVisitorScreen(),
    profilVisitorScreen:(context) => ProfilVisitorScreen(),

  };
}