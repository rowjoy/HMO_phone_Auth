// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hmo/registration/location.dart';
import 'package:hmo/registration/numberlist.dart';
import 'package:hmo/widget/button.dart';
import 'package:hmo/widget/from_field.dart';

class ContactsNumber extends StatefulWidget {
  static const String path = "ContactNumber";
  const ContactsNumber({Key? key}) : super(key: key);

  @override
  _ContactsNumberState createState() => _ContactsNumberState();
}

class _ContactsNumberState extends State<ContactsNumber> {
  bool checkboxs = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Trusted Contacts'),
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
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                CarouselSlider(
                  items: [
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: HexColor('#FFFFFF'),
                        boxShadow: kElevationToShadow[4],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 8, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Contact Number',
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  Checkbox(
                                    value: checkboxs,
                                    onChanged: (value) {
                                      setState(() {
                                        checkboxs = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Text(
                                "+8801783109748",
                                style: TextStyle(
                                  fontFamily: 'Helvetica',
                                  fontSize: 16,
                                  color: HexColor('#707070'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 120.0,
                    aspectRatio: 16 / 9,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.8,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 15),
                  child: Text(
                    'You can select up to 5 contacts',
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 360,
                  child: ListView(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Numberlist(
                        name: 'Contact Name',
                        number: '+8801783152145',
                      ),
                      Numberlist(
                        name: 'Contact Name',
                        number: '+8801783109749',
                      ),
                      Numberlist(
                        name: 'Contact Name',
                        number: '+8801783109745',
                      ),
                      Numberlist(
                        name: 'Contact Name',
                        number: '+8801783109742',
                      ),
                      Numberlist(
                        name: 'Contact Name',
                        number: '+8801783109742',
                      ),
                      Numberlist(
                        name: 'Contact Name',
                        number: '+8801783109742',
                      ),
                      Numberlist(
                        name: 'Contact Name',
                        number: '+8801783109742',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                  child: FromField(
                    keyboardType: TextInputType.number,
                    height: 55,
                    prefixIcon: Icon(Icons.close),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
                ButtonWidget(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  buttonname: 'Continue',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Locationpage()));
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
