// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hmo/registration/registration.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/utils/snackber.dart';
import 'package:hmo/widget/appber.dart';
import 'package:hmo/widget/button.dart';
import 'package:hmo/widget/otpfrom.dart';

class Codepage extends StatefulWidget {
  static const String path = "Codepage";
  const Codepage({Key? key}) : super(key: key);

  @override
  _CodepageState createState() => _CodepageState();
}

class _CodepageState extends State<Codepage> {
  var fromkey = GlobalKey<FormState>();
  TextEditingController pin1 = TextEditingController();
  TextEditingController pin2 = TextEditingController();
  TextEditingController pin3 = TextEditingController();
  TextEditingController pin4 = TextEditingController();
  TextEditingController pin5 = TextEditingController();
  TextEditingController pin6 = TextEditingController();
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;
  late FocusNode pin5FocusNode;
  late FocusNode pin6FocusNode;
  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    pin5FocusNode.dispose();
    pin6FocusNode.dispose();
    super.dispose();
  }

  void nextfiled(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

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
              Appbar(
                text: 'Submit OTP',
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: AspectRatio(
                    aspectRatio: 2,
                    child: Image.asset(
                      'assets/images/Code.png',
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 1 / 5.5,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: kElevationToShadow[3]),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 45, right: 45),
                              child: Text(
                                "Enter the OTP we’ve sent to your phone",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(
                                    COLOR.coustomColors('#707070'),
                                  ),
                                  fontSize: 17,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8, right: 8),
                              child: Form(
                                key: fromkey,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    OtpForm(
                                      controller: pin1,
                                      onChanged: (value) {
                                        nextfiled(value, pin2FocusNode);
                                      },
                                    ),
                                    OtpForm(
                                      controller: pin2,
                                      focusNode: pin2FocusNode,
                                      onChanged: (value) {
                                        nextfiled(value, pin3FocusNode);
                                      },
                                    ),
                                    OtpForm(
                                      controller: pin3,
                                      focusNode: pin3FocusNode,
                                      onChanged: (value) {
                                        nextfiled(value, pin4FocusNode);
                                      },
                                    ),
                                    OtpForm(
                                      controller: pin4,
                                      focusNode: pin4FocusNode,
                                      onChanged: (value) {
                                        nextfiled(value, pin5FocusNode);
                                      },
                                    ),
                                    OtpForm(
                                      controller: pin5,
                                      focusNode: pin5FocusNode,
                                      onChanged: (value) {
                                        nextfiled(value, pin6FocusNode);
                                      },
                                    ),
                                    OtpForm(
                                      controller: pin6,
                                      focusNode: pin6FocusNode,
                                      onChanged: (value) {
                                        pin6FocusNode.unfocus();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    ButtonWidget(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 5,
                      ),
                      buttonname: 'Submit',
                      onPressed: () {
                        if (pin1.text.isEmpty &&
                            pin2.text.isEmpty &&
                            pin3.text.isEmpty &&
                            pin4.text.isEmpty &&
                            pin5.text.isEmpty &&
                            pin6.text.isEmpty) {
                          return showsnckbers(context, '  OTP field isEmpty',
                              DismissDirection.up);
                        } else if (pin1.text.isNotEmpty &&
                            pin2.text.isNotEmpty &&
                            pin3.text.isNotEmpty &&
                            pin4.text.isNotEmpty &&
                            pin5.text.isNotEmpty &&
                            pin6.text.isNotEmpty) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Registration()));
                        }
                      },
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
