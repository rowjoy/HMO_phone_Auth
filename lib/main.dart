// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:hmo/login/code.dart';
import 'package:hmo/login/login.dart';
import 'package:hmo/registration/contacts.dart';
import 'package:hmo/registration/location.dart';
import 'package:hmo/registration/registration.dart';
import 'package:hmo/splash/splash_screen.dart';
import 'package:hmo/view/contact/contact.dart';
import 'package:hmo/view/emergancy/emargancy.dart';
import 'package:hmo/view/home/home.dart';
import 'package:hmo/view/home/homescreen.dart';
import 'package:hmo/view/home/screen_section/safezone/blood.dart';
import 'package:hmo/widget/drawer/components/profile/profile.dart';
import 'package:hmo/widget/drawer/drawer.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: SplashScreen.path,
      routes: {
        SplashScreen.path: (context) => SplashScreen(),
        Loginpage.path: (context) => Loginpage(),
        Codepage.path: (context) => Codepage(),
        Registration.path: (context) => Registration(),
        ContactsNumber.path: (context) => ContactsNumber(),
        Locationpage.path: (context) => Locationpage(),
        Homescreen.path: (context) => Homescreen(),
        Homepage.path: (context) => Homepage(),
        Contactpage.path: (context) => Contactpage(),
        Emargancypage.path: (context) => Emargancypage(),
        Profilepage.path: (context) => Profilepage(),
        HomeDrawer.path: (context) => HomeDrawer(),
        Bloodpage.path: (context) => Bloodpage(),
      },
    );
  }
}
