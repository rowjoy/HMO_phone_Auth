// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:hmo/registration/location.dart';
import 'package:hmo/registration/numberlist.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/widget/appber.dart';
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
  TextEditingController controllerserch = TextEditingController();
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
                text: 'Trusted Contacts',
              ),
              CarouselSlider(
                // ignore: prefer_const_literals_to_create_immutables
                items: [
                  Container(
                    margin: EdgeInsets.only(top: 6, bottom: 6),
                    decoration: BoxDecoration(
                      color: Color(COLOR.coustomColors('FFFFFF')),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade100,
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Contact Number',
                                  style: TextStyle(
                                    color: Color(
                                      COLOR.coustomColors('#707070'),
                                    ),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
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
                                color: Color(
                                  COLOR.coustomColors('#707070'),
                                ),
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 95.0,
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.8,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(
                  'You can select up to 5 contacts',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(
                      COLOR.coustomColors('707070'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    child: ListView(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Numberlist(
                      name: 'Contact Name',
                      number: '+08801783109748',
                    ),
                    Numberlist(
                      name: 'Contact Name',
                      number: '+08801783109747',
                    ),
                    Numberlist(
                      name: 'Contact Name',
                      number: '+08801783109746',
                    ),
                    Numberlist(
                      name: 'Contact Name',
                      number: '+08801783109744',
                    ),
                    Numberlist(
                      name: 'Contact Name',
                      number: '+08801783109745',
                    ),
                    Numberlist(
                      name: 'Contact Name',
                      number: '+08801783109743',
                    ),
                    Numberlist(
                      name: 'Contact Name',
                      number: '+08801783109742',
                    ),
                    Numberlist(
                      name: 'Contact Name',
                      number: '+08801783109741',
                    ),
                  ],
                )),
              ),
              Container(
                height: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, left: 13, right: 13),
                      child: TextFromFields(
                        controller: controllerserch,
                        hintText: 'Search number',
                        prefixIcon: IconButton(
                          onPressed: () {
                            controllerserch.clear();
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.grey,
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    ButtonWidget(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, bottom: 3),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
