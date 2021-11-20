// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hmo/login/login.dart';
import 'package:hmo/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  static const String path = "SplashScreen";
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Loginpage()));
    });
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
