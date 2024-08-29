import 'dart:js';
import 'package:flutter/material.dart';
import 'package:tukang_com/pages/bantuan.dart';
import 'package:tukang_com/pages/splash_screen.dart';
import 'package:tukang_com/widgets/bottom_navigation.dart';
import 'package:tukang_com/pages/akun.dart';
import 'package:tukang_com/pages/beranda.dart';
import 'package:tukang_com/pages/pesanan.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => SplashScreenPage(),
      '/beranda': (context) => Beranda(),
      '/pesanan': (context) => Pesanan(),
      '/bantuan': (context) => Bantuan(),
      '/akun': (context) => Profile()
    },
  ));
}
