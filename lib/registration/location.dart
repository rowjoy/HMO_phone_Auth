// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hmo/widget/button.dart';
import 'package:hmo/widget/from_field.dart';

class Locationpage extends StatefulWidget {
  static const String path = "Location";
  const Locationpage({Key? key}) : super(key: key);

  @override
  _LocationpageState createState() => _LocationpageState();
}

class _LocationpageState extends State<Locationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Safe Zone'),
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
                padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
                child: AspectRatio(
                  aspectRatio: 2,
                  child: Image.asset('assets/images/Group 597@1X.png'),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 1 / 7.5,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15, bottom: 45),
                      height: 210,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: kElevationToShadow[4],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            FromField(
                              margin: EdgeInsets.only(
                                left: 15,
                                right: 15,
                                top: 20,
                              ),
                              height: 50,
                              hintText: 'Home address',
                              suffixIcon: Icon(Icons.location_on),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                'If you can’t find your zone from google and currently you are at the place, you can set the current zone from below.',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(left: 15, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Automatically Get Current Location',
                                    style: TextStyle(
                                      fontFamily: 'Helvetica',
                                      color: HexColor('#00B27A'),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ButtonWidget(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, top: 35),
                      buttonname: 'Continue',
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
