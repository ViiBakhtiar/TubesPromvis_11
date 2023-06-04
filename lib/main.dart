// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend_tubes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
        fontFamily: 'Poppins',
        primaryColor: Colors.black,
      ),
      title: 'Tubes',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.onboardScreen,
      routes: AppRoutes.routes,
    );
  }
}
