// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, avoid_print

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
  Future allpermisson() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.location,
      Permission.storage,
      Permission.contacts,
      Permission.calendar,
      Permission.bluetooth,
    ].request();
    if (await Permission.contacts.request().isGranted) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Loginpage()));
      // Either the permission was already granted before or the user just granted it.
    } else if (await Permission.contacts.isDenied) {
      SystemNavigator.pop();
    }
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      allpermisson();
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
