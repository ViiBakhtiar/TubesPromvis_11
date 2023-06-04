// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/beranda_visitor_screen.dart';
import 'package:frontend_tubes/view/postingan_visitor_screen.dart';
import 'package:frontend_tubes/view/portofolio_visitor_screen.dart';
import 'package:frontend_tubes/view/laporan_visitor_screen.dart';
import 'package:frontend_tubes/view/profil_visitor_screen.dart';
import 'package:frontend_tubes/routes.dart';
import 'package:frontend_tubes/view/items/navbar_bawah.dart';


// ignore_for_file: must_be_immutable
class VisitorActor extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.berandaVisitorScreen,
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
        return AppRoutes.berandaVisitorScreen;
      case BottomBarEnum.postingan:
        return AppRoutes.postinganVisitorScreen;
      case BottomBarEnum.portofolio:
        return AppRoutes.portofolioVisitorScreen;
      case BottomBarEnum.laporan:
        return AppRoutes.laporanVisitorScreen;
      case BottomBarEnum.profil:
        return AppRoutes.profilVisitorScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.berandaVisitorScreen:
        return BerandaVisitorScreen();
      case AppRoutes.postinganVisitorScreen:
        return PostinganVisitorScreen();
      case AppRoutes.portofolioVisitorScreen:
        return PortofolioVisitorScreen();
      case AppRoutes.laporanVisitorScreen:
        return LaporanVisitorScreen();
      case AppRoutes.profilVisitorScreen:
        return ProfilVisitorScreen();
      default:
        return DefaultWidget();
    }
  }
}
