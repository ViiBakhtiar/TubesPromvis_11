// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/beranda_member_screen.dart';
import 'package:frontend_tubes/view/postingan_member_tentang_screen.dart';
import 'package:frontend_tubes/view/aktivitas1_member_screen.dart';
import 'package:frontend_tubes/view/laporan1_member_screen.dart';
import 'package:frontend_tubes/view/profil_member_screen.dart';
import 'package:frontend_tubes/routes.dart';
import 'package:frontend_tubes/view/items/navbar_bawah.dart';


// ignore_for_file: must_be_immutable
class MemberActor extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.berandaMemberScreen,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.beranda:
        return AppRoutes.berandaMemberScreen;
      case BottomBarEnum.postingan:
        return AppRoutes.postinganMemberTentangScreen;
      case BottomBarEnum.portofolio:
        return AppRoutes.aktivitas1MemberScreen; 
      case BottomBarEnum.laporan:
        return AppRoutes.laporan1MemberScreen;
      case BottomBarEnum.profil:
        return AppRoutes.profilMemberScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.berandaMemberScreen:
        return BerandaMemberScreen();
      case AppRoutes.postinganMemberTentangScreen:
        return PostinganMemberTentangScreen();
      case AppRoutes.aktivitas1MemberScreen: 
        return Aktivitas1MemberScreen();
      case AppRoutes.laporan1MemberScreen:  
        return Laporan1MemberScreen();
      case AppRoutes.profilMemberScreen:
        return ProfilMemberScreen();
      default:
        return DefaultWidget();
    }
  }
}
