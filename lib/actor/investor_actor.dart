// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:frontend_tubes/view/beranda_investor_screen.dart';
import 'package:frontend_tubes/view/profil_investor_screen.dart';
import 'package:frontend_tubes/view/postingan_investor_screen.dart';
import 'package:frontend_tubes/view/portofolio1_investor_screen.dart';
import 'package:frontend_tubes/view/laporan1_investor_screen.dart';
import 'package:frontend_tubes/routes.dart';
import 'package:frontend_tubes/view/items/navbar_bawah.dart';


// ignore_for_file: must_be_immutable
class InvestorActor extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.berandaInvestorScreen,
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
        return AppRoutes.berandaInvestorScreen;
      case BottomBarEnum.postingan:
        return AppRoutes.postinganInvestorScreen;
      case BottomBarEnum.portofolio:
        return AppRoutes.portofolio1InvestorScreen;
      case BottomBarEnum.laporan:
        return AppRoutes.laporan1InvestorScreen;
      case BottomBarEnum.profil:
        return AppRoutes.profilInvestorScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.berandaInvestorScreen:
        return BerandaInvestorScreen();
      case AppRoutes.postinganInvestorScreen:
        return PostinganInvestorScreen();
      case AppRoutes.portofolio1InvestorScreen:
        return Portofolio1InvestorScreen();
      case AppRoutes.laporan1InvestorScreen:
        return Laporan1InvestorScreen();
      case AppRoutes.profilInvestorScreen:
        return ProfilInvestorScreen();
      default:
        return DefaultWidget();
    }
  }
}
