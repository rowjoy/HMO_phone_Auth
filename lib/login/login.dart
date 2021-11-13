// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hmo/login/code.dart';
import 'package:hmo/widget/button.dart';
import 'package:hmo/widget/from_field.dart';

class Loginpage extends StatefulWidget {
  static const String path = "Loginpage";
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
                  child: AspectRatio(
                    aspectRatio: 1.5,
                    child: Image.asset(
                        'assets/images/phone illustration-01@1X.png'),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1 / 7.5,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15),
                        height: 185,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: kElevationToShadow[4],
                        ),
                        child: FromField(
                          height: 60,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Helvetica',
                            fontSize: 18,
                          ),
                          hintStyle: Theme.of(context).textTheme.headline6,
                          margin: EdgeInsets.only(left: 15, right: 15),
                          keyboardType: TextInputType.number,
                          hintText: 'Phone',
                          prefixIcon: ImageIcon(
                            AssetImage('assets/icons/phone.png'),
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ButtonWidget(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 30),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Codepage()));
                        },
                        buttonname: 'Keep Going',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
