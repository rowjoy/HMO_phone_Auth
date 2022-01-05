// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hmo/bank/bloodbank/bloodbank.dart';
import 'package:hmo/bank/bloodregistration/bloodselectedchip.dart';
import 'package:hmo/bank/bloodregistration/donatedate.dart';
import 'package:hmo/bank/bloodregistration/madicalissues.dart';
import 'package:hmo/utils/snackber.dart';
import 'package:hmo/utils/varibales.dart';
import 'package:hmo/view/home/screen_section/safezone/slectedfield/utils.dart';
import 'package:hmo/widget/appber.dart';
import 'package:hmo/widget/button.dart';

class BloodRegistration extends StatefulWidget {
  const BloodRegistration({Key? key}) : super(key: key);

  @override
  _BloodRegistrationState createState() => _BloodRegistrationState();
}

class _BloodRegistrationState extends State<BloodRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Expanded(
              child: Container(
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Appbar(
                      text: 'Donor Registration',
                    ),
                    BloodSelectedchip(),
                    MadicalIssues(),
                    LastDonationdate(),
                  ],
                ),
              ),
            ),
            ButtonWidget(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
              buttonname: 'Active Blood Profile',
              onPressed: () {
                if (bloodchipvalue.bitLength == 0) {
                  showsnckbers(context, 'Please selected blood group',
                      DismissDirection.down);
                } else if (issuesitem.bitLength == 0) {
                  showsnckbers(context, 'Please selected Medical issues',
                      DismissDirection.down);
                } else if (lastdonationdate == null) {
                  showsnckbers(context, 'Please selected Last donation date',
                      DismissDirection.down);
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BloodBank()));
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
