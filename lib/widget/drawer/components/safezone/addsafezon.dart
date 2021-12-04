// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/widget/appber.dart';
import 'package:hmo/widget/button.dart';
import 'package:hmo/widget/from_field.dart';

class ADDsafezon extends StatefulWidget {
  const ADDsafezon({Key? key}) : super(key: key);

  @override
  _ADDsafezonState createState() => _ADDsafezonState();
}

class _ADDsafezonState extends State<ADDsafezon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Appbar(
              text: 'Add Safe Zone',
            ),
            Expanded(
              child: Container(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 6),
                            child: Text(
                              'Location',
                              style: TextStyle(
                                color: Color(COLOR.coustomColors('#303030')),
                                fontSize: 15,
                              ),
                            ),
                          ),
                          TextFromFields(
                            hintText: 'Location',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 6, top: 15),
                            child: Text(
                              'Identification Name',
                              style: TextStyle(
                                color: Color(COLOR.coustomColors('#303030')),
                                fontSize: 15,
                              ),
                            ),
                          ),
                          TextFromFields(
                            hintText: 'Home',
                            suffixIcon: Icon(Icons.location_on),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Automatically Get Current Location',
                            style: TextStyle(
                              color: Color(COLOR.coustomColors('00B27A')),
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
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
              padding: EdgeInsets.only(bottom: 5),
              buttonname: 'Add to Safe Zone',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
