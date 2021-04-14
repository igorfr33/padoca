import 'package:flutter/material.dart';
import 'package:padaria_app/Login/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.white,
    ),
    home: Login(),
  ));
}