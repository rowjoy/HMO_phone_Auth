// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/widget/drawer/components/profile/editprofile/bloodgroup.dart';
import 'package:hmo/widget/drawer/components/profile/editprofile/gender.dart';
import 'package:hmo/widget/drawer/components/profile/editprofile/userdataedit.dart';
import 'package:hmo/widget/drawer/components/profile/userinfofrield.dart';
import 'package:image_picker/image_picker.dart';

class Profilepage extends StatefulWidget {
  static const String path = "Profilepage";
  const Profilepage({Key? key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  String? profileimages;
  String? nidimages;

  int? blood = 0;
  int? plasma = 0;
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
          'Profile',
          style: TextStyle(color: Color(COLOR.coustomColors('#303030'))),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 1 / 4,
                        height: MediaQuery.of(context).size.width * 1 / 4,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: ClipOval(
                          child: profileimages == null
                              ? Image.asset('assets/icons/blank-profil.png')
                              : Image.file(
                                  File(profileimages!),
                                  fit: BoxFit.fill,
                                ),
                        ),
                      ),
                      Positioned(
                        top: 55,
                        left: 55,
                        right: 0,
                        bottom: 0,
                        child: IconButton(
                          onPressed: () {
                            profilepicked(
                              ImageSource.gallery,
                            );
                          },
                          icon: Icon(
                            Icons.camera_alt_sharp,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Userinfo(
                  frieldname: 'Full Name',
                  userdata: 'Ashraful Parvez',
                  onLongPress: () {},
                  editonTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserdataEdit(
                                  frielname: "Full Name",
                                  frielddata: 'Ashraful Parvez',
                                )));
                  },
                ),
                Genderedit(),
                Userinfo(
                  frieldname: 'Birthdate',
                  userdata: '01-Jan-1990',
                  onLongPress: () {},
                  editonTap: () {},
                ),
                Userinfo(
                  frieldname: 'Phone Number',
                  userdata: '+880 123456789',
                  onLongPress: () {},
                  editonTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserdataEdit(
                            frielname: 'Phone Number',
                            frielddata: '+880 123456789',
                          ),
                        ));
                  },
                ),
                Userinfo(
                  frieldname: 'Email',
                  userdata: 'email@mail.com',
                  onLongPress: () {},
                  editonTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserdataEdit(
                          frielname: 'Email',
                          frielddata: 'email@mail.com',
                        ),
                      ),
                    );
                  },
                ),
                Bloodedit(),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Available for Blood donation',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(
                            COLOR.coustomColors('#747474'),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      'Yes',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(
                                          COLOR.coustomColors('#747474'),
                                        ),
                                      ),
                                    ),
                                    Radio(
                                      value: 0,
                                      groupValue: blood,
                                      activeColor:
                                          Color(COLOR.coustomColors('#00B27A')),
                                      onChanged: (int? value) {
                                        setState(() {
                                          blood = value;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(
                                        COLOR.coustomColors('#747474'),
                                      ),
                                    ),
                                  ),
                                  Radio(
                                    value: 1,
                                    groupValue: blood,
                                    activeColor:
                                        Color(COLOR.coustomColors('#00B27A')),
                                    onChanged: (int? value) {
                                      setState(() {
                                        blood = value;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Available for Plasma donate',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(
                            COLOR.coustomColors('#747474'),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      'Yes',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(
                                          COLOR.coustomColors('#747474'),
                                        ),
                                      ),
                                    ),
                                    Radio(
                                      value: 0,
                                      groupValue: plasma,
                                      activeColor: Colors.red,
                                      onChanged: (int? value) {
                                        setState(() {
                                          plasma = value;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'No',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(
                                        COLOR.coustomColors('#747474'),
                                      ),
                                    ),
                                  ),
                                  Radio(
                                    value: 1,
                                    groupValue: plasma,
                                    activeColor: Colors.red,
                                    onChanged: (int? value) {
                                      setState(() {
                                        plasma = value;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          'Verified your identity by NID',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(
                              COLOR.coustomColors('#747474'),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 48,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(
                            COLOR.coustomColors('#F6F6F6'),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 2, top: 1, bottom: 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: nidimages == null
                                      ? Text(
                                          'IMG123456',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(
                                              COLOR.coustomColors('#747474'),
                                            ),
                                          ),
                                        )
                                      : Image.file(File(nidimages!)),
                                ),
                                IconButton(
                                    onPressed: () {
                                      nidpicker(
                                        ImageSource.gallery,
                                      );
                                    },
                                    icon: Icon(Icons.upload_file)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'Account Active from',
                          style: TextStyle(
                            color: Color(COLOR.coustomColors('#707070')),
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '11 September, 2020',
                          style: TextStyle(
                            color: Color(COLOR.coustomColors('#707070')),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final ImagePicker imagePicker = ImagePicker();
  Future profilepicked(ImageSource source) async {
    final XFile? selectImage = await imagePicker.pickImage(source: source);
    setState(() {
      profileimages = selectImage!.path;
    });
  }

  Future nidpicker(ImageSource source) async {
    final XFile? getimage = await imagePicker.pickImage(source: source);
    setState(() {
      nidimages = getimage!.path;
    });
  }
}
