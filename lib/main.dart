
import 'package:bankdetails/screen1.dart';
import 'package:bankdetails/startscreen.dart';
import 'package:flutter/material.dart';

import 'screen2.dart';



void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) =>SplashScreen(),
      'home':(context) => HomeScreen(),
      'details':(context) => BankDetails(),
    },

  ));
}