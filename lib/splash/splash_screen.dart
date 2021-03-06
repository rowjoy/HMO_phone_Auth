// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, avoid_print, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hmo/login/login.dart';
import 'package:hmo/utils/colors.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreen extends StatefulWidget {
  static const String path = "SplashScreen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int splashtime = 3;
  Future allpermisson() async {
    if (await Permission.contacts.request().isGranted) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Loginpage()));
    } else if (await Permission.contacts.isDenied) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.black,
            title: Text(
              'Access  Contact',
              style: TextStyle(color: Colors.white),
            ),
            content: Text(
              'This apps Access your Phone  contact  number ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () async {
                    if (await Permission.contacts.isGranted) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Loginpage()));
                    } else if (await Permission.contacts.isDenied) {
                      openAppSettings();
                    }
                  },
                  child: Text('Allow')),
              TextButton(
                onPressed: () {
                  SystemNavigator.pop();
                },
                child: Text('Exit'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: splashtime), () async {
      allpermisson();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(COLOR.coustomColors('#00B27A')),
      body: Stack(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 2,
                  child: Image.asset('assets/images/splashicon.png'),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    'HMO',
                    style: TextStyle(
                      color: Color(COLOR.coustomColors('#FFFFFF')),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Increments Inc.| 2021',
                style: TextStyle(
                  fontSize: 13,
                  color: Color(COLOR.coustomColors('#FFFFFF')),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
