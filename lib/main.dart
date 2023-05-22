import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import screen
import 'package:frontend_tubes/view/onboard_screen.dart';
import 'package:frontend_tubes/view/login_screen.dart';
import 'package:frontend_tubes/view/signup_screen.dart';
import 'package:frontend_tubes/view/beranda_investor_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

// pindah file route.dart (REMINDER)
class AppRoutes {
  static const String onboardScreen = '/onboard_screen';
  static const String loginScreen = '/login_screen';
  static const String signupScreen = '/signup_screen';
  static const String berandaInvestorScreen = '/beranda_investor_screen';


  static Map<String, WidgetBuilder> routes = {
    onboardScreen: (context) => OnboardScreen(),
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    berandaInvestorScreen: (context) => BerandaInvestorScreen(),

  };
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
        // fontFamily: 'Poppins',
      ),
      title: 'Tubes',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.onboardScreen,
      routes: AppRoutes.routes,
    );
  }
}
