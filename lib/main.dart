import 'package:flutter/material.dart';
import 'package:testk2/firstpage.dart';
import 'package:testk2/login.dart';
import 'package:testk2/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'register': (context) => MyRegister(),
      'firstpage' : (context) => FirstPage(),

    },
  ),);
}
