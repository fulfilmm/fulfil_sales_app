import 'package:flutter/material.dart';
import 'package:fulfilsalesapp/pages/login.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      // "/": (context) => Flash(),
      "/": (context) => Login()
    },
  ));
}