// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hmo/registration/registration.dart';
import 'package:hmo/widget/button.dart';
import 'package:hmo/widget/otpfrom.dart';

class Codepage extends StatefulWidget {
  static const String path = "Codepage";
  const Codepage({Key? key}) : super(key: key);

  @override
  _CodepageState createState() => _CodepageState();
}

class _CodepageState extends State<Codepage> {
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Submit OTP'),
        titleTextStyle: Theme.of(context).textTheme.headline4,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
                  child: AspectRatio(
                    aspectRatio: 1.6,
                    child: Image.asset('assets/images/Code.png'),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1 / 8.5,
                ),
                Container(
                  height: 185,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: kElevationToShadow[4],
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            'Enter the OTP we’ve sent to your phone',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                ButtonWidget(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
                  buttonname: 'Submit',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Registration()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
