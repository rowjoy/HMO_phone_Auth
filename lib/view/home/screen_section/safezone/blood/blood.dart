// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';

import 'package:hmo/utils/colors.dart';
import 'package:hmo/utils/snackber.dart';
import 'package:hmo/view/home/screen_section/safezone/blood/bdonated.dart';
import 'package:hmo/view/home/screen_section/safezone/blood/bloodhistorys.dart';
import 'package:hmo/view/home/screen_section/safezone/blood/bmyrequest.dart';

import 'package:hmo/view/home/screen_section/safezone/blood/brequest.dart';
import 'package:hmo/view/home/screen_section/safezone/slectedfield/bloodgroup.dart';
import 'package:hmo/view/home/screen_section/safezone/slectedfield/datepicer.dart';
import 'package:hmo/view/home/screen_section/safezone/slectedfield/locationseleced.dart';
import 'package:hmo/view/home/screen_section/safezone/slectedfield/utils.dart';
import 'package:hmo/widget/button.dart';
import 'package:hmo/widget/tapthecard.dart';

class Bloodpage extends StatefulWidget {
  static const path = 'Bloodpage';
  const Bloodpage({Key? key}) : super(key: key);

  @override
  _BloodpageState createState() => _BloodpageState();
}

class _BloodpageState extends State<Bloodpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          'Blood Profile',
          style: TextStyle(color: Color(COLOR.coustomColors('#303030'))),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Next Donation',
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#FF4C4C')),
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'February 14, 2022',
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#FF4C4C'))
                              .withOpacity(0.7),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Available on 96 days',
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#707070')),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: kElevationToShadow[4],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "BLOOD NEEDED?",
                            style: TextStyle(
                              color: Color(COLOR.coustomColors('#707070')),
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Bloodgroup(),
                        SizedBox(
                          height: 10,
                        ),
                        Locationseleced(),
                        SizedBox(
                          height: 10,
                        ),
                        Datepicker(),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 45,
                                width:
                                    MediaQuery.of(context).size.width * 1 / 2,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(COLOR.coustomColors('#00B27A'))),
                                  ),
                                  onPressed: () {
                                    if (selectdate == null) {
                                      print('Please selected date');
                                      showsnckbers(
                                          context,
                                          'Please selected date',
                                          DismissDirection.up);
                                    }
                                  },
                                  child: Text(
                                    'REQUEST',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Color(
                                        COLOR.coustomColors('#FFFFFF'),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                BloodReduest(),
                TapThaeCard(),
                BloodDonated(),
                TapThaeCard(),
                MyRequest(),
                TapThaeCard(),
                ButtonWidget(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 5),
                  buttonname: 'Blood History',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VBloodHestory()));
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
