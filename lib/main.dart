import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:online_bct/view/home.dart';
import 'package:online_bct/view/nav_menu_login/bottom_nav_bar.dart';
import 'package:online_bct/view/register.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  if (defaultTargetPlatform == TargetPlatform.android) {
    AndroidGoogleMapsFlutter.useAndroidViewSurface = true;
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/register': (context) => const Register(),
        '/nav_menu_login' : (context) => const BottomNavBar(),
        '/home' : (context) => const Home()
      },
      debugShowCheckedModeBanner: false,
      home: BottomNavBar()
    );
  }
}