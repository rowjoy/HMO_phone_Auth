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
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: AspectRatio(
                    aspectRatio: 2,
                    child: Image.asset(
                      'assets/images/phone illustration-01@1X.png',
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: kElevationToShadow[1],
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: TextFromFields(
                            keyboardType: TextInputType.number,
                            hintText: "Phone",
                            prefixIcon: Icon(
                              Icons.phone_android,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    ButtonWidget(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 5,
                      ),
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
    );
  }
}
