// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/widget/appber.dart';
import 'package:hmo/widget/button.dart';
import 'package:hmo/widget/from_field.dart';

class NewEmergencyadd extends StatefulWidget {
  const NewEmergencyadd({Key? key}) : super(key: key);

  @override
  _NewContactState createState() => _NewContactState();
}

class _NewContactState extends State<NewEmergencyadd> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  var formkey = GlobalKey<FormState>();
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
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Appbar(
                  text: 'Add New Emergency',
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      Form(
                        key: formkey,
                        child: Column(
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Name*',
                                    style: TextStyle(
                                      color: Color(
                                        COLOR.coustomColors('303030'),
                                      ),
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextFromFields(
                                    controller: namecontroller,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(20),
                                    ],
                                    hintText: 'Contact name',
                                    validator: (value) {
                                      String pattan = r'(^[A-Za-z a-z]{3,20})';
                                      RegExp regExp = RegExp(pattan);
                                      if (value!.isEmpty) {
                                        return 'Please enter your name';
                                      } else if (!regExp.hasMatch(value)) {
                                        return 'Please enter your valid name';
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Phone*',
                                    style: TextStyle(
                                      color: Color(
                                        COLOR.coustomColors('303030'),
                                      ),
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextFromFields(
                                    controller: numbercontroller,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(11),
                                    ],
                                    hintText: 'Contact number',
                                    validator: (value) {
                                      String pattin =
                                          r'(^[0][1][346789][0-9]{8}$)';
                                      RegExp regExp = RegExp(pattin);
                                      if (value!.isEmpty) {
                                        return 'Please enter your number';
                                      } else if (!regExp.hasMatch(value)) {
                                        return 'Please enter your valid number';
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Address',
                                    style: TextStyle(
                                      color: Color(
                                        COLOR.coustomColors('303030'),
                                      ),
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextFromFields(
                                    controller: addresscontroller,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(25),
                                    ],
                                    hintText: 'Member address',
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Please enter your address';
                                      }
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 15,
                              height: 2,
                              color: Color(COLOR.coustomColors('F6F6F6')),
                            ),
                            Text(
                              'or',
                              style: TextStyle(
                                color: Color(
                                  COLOR.coustomColors('F6F6F6'),
                                ),
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              width: 15,
                              height: 2,
                              color: Color(COLOR.coustomColors('F6F6F6')),
                            ),
                          ],
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            BorderSide(
                              color: Color(
                                COLOR.coustomColors('00B27A'),
                              ),
                            ),
                          ),
                        ),
                        child: Text(
                          'Phone Directory',
                          style: TextStyle(
                            color: Color(
                              COLOR.coustomColors('00B27A'),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text(
                          'Tap to choose from your phone directory',
                          style: TextStyle(
                            color: Color(
                              COLOR.coustomColors('707070'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ButtonWidget(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 5,
                ),
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    Navigator.pop(context);
                  }
                },
                buttonname: 'Add to Emergency',
              )
            ],
          ),
        ),
      ),
    );
  }
}
