import 'package:flutter/material.dart';
import 'package:ukl_butuhtukang_xir3/pages/homepage.dart';
import 'package:ukl_butuhtukang_xir3/pages/profile.dart';
import 'package:ukl_butuhtukang_xir3/pages/splash_screen.dart';
import 'package:ukl_butuhtukang_xir3/pages/transaksi.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color:  Colors.grey[300],
      title: 'Perlu Tukang',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}