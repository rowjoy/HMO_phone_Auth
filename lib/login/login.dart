// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors, unused_local_variable, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  var fromkey = GlobalKey<FormState>();
  TextEditingController phonecontroller = TextEditingController();

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
                      height: MediaQuery.of(context).size.height * 1 / 6,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: kElevationToShadow[1],
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Form(
                            key: fromkey,
                            child: TextFromFields(
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(11),
                              ],
                              validator: (value) {
                                String patttern = r'(^[0][1][346789][0-9]{8}$)';
                                RegExp regExp = new RegExp(patttern);

                                if (value!.isEmpty) {
                                  return 'Please enter mobile number';
                                } else if (!regExp.hasMatch(value)) {
                                  return 'Please enter valid mobile number';
                                }
                              },
                              controller: phonecontroller,
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
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 9,
                    ),
                    ButtonWidget(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 5,
                      ),
                      onPressed: () {
                        if (fromkey.currentState!.validate()) {
                          fromkey.currentState!.save();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Codepage()));
                        }
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
