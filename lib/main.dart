import 'package:flutter/material.dart';
import 'package:online_bct/view/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const Login(),
    },
  ));
}

