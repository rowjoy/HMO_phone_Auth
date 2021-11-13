// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hmo/login/code.dart';
import 'package:hmo/login/login.dart';
import 'package:hmo/registration/contacts.dart';
import 'package:hmo/registration/location.dart';
import 'package:hmo/registration/registration.dart';
import 'package:hmo/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          headline4: TextStyle(
            fontFamily: 'Helvetica',
            color: Colors.grey,
            fontWeight: FontWeight.normal,
            fontSize: 18,
          ),
          headline5: TextStyle(
            fontFamily: 'Helvetica',
            color: Colors.grey,
            fontWeight: FontWeight.normal,
            fontSize: 18,
          ),
          headline6: TextStyle(
            fontFamily: 'Helvetica',
            color: Colors.grey,
            fontWeight: FontWeight.normal,
            fontSize: 18,
          ),
          bodyText1: TextStyle(
            fontFamily: 'Helvetica',
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 17,
          ),
          bodyText2: TextStyle(
            color: HexColor('#707070'),
            fontFamily: 'Helvetica',
            fontSize: 14,
          ),
        ),
      ),
      initialRoute: SplashScreen.path,
      routes: {
        SplashScreen.path: (context) => SplashScreen(),
        Loginpage.path: (context) => Loginpage(),
        Codepage.path: (context) => Codepage(),
        Registration.path: (context) => Registration(),
        ContactsNumber.path: (context) => ContactsNumber(),
        Locationpage.path: (context) => Locationpage(),
      },
    );
  }
}
