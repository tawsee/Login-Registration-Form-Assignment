import 'package:flutter/material.dart';
import 'package:tawsee77/container_page.dart';
import 'package:tawsee77/converter_page.dart';
import 'package:tawsee77/homepage.dart';
import 'package:tawsee77/login_page.dart';
//import 'package:tawsee77/container_page.dart';
//import 'package:tawsee77/image_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}