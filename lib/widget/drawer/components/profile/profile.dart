// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/widget/appber.dart';
import 'package:hmo/widget/drawer/components/profile/userdataedit.dart';
import 'package:hmo/widget/drawer/components/profile/userinfofrield.dart';
import 'package:image_picker/image_picker.dart';

class Profilepage extends StatefulWidget {
  static const String path = "Profilepage";
  const Profilepage({Key? key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  String? images;
  String? nid;

  int? blood = 0;
  int? plasma = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Appbar(
              text: 'Profile',
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Stack(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: ClipOval(
                      child: images == null
                          ? Image.asset('assets/icons/blank-profil.png')
                          : Image.file(
                              File(images!),
                              fit: BoxFit.fill,
                            ),
                    ),
                  ),
                  Positioned(
                    top: 48,
                    left: 48,
                    right: 0,
                    bottom: 0,
                    child: IconButton(
                      onPressed: () {
                        profilepicked(
                          ImageSource.camera,
                        );
                      },
                      icon: Icon(
                        Icons.camera_alt_sharp,
                        color: Colors.black.withOpacity(0.7),
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
            Userinfo(
              frieldname: 'Gender',
              userdata: 'Male',
              onLongPress: () {},
              editonTap: () {},
            ),
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
              editonTap: () {},
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
                            )));
              },
            ),
            Userinfo(
              frieldname: 'Blood Profile',
              userdata: 'O+ (ve)',
              onLongPress: () {},
              editonTap: () {},
            ),
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
              margin: EdgeInsets.only(bottom: 5, left: 10, right: 10),
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
                    height: 50,
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
                              child: nid == null
                                  ? Text(
                                      'IMG123456',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(
                                          COLOR.coustomColors('#747474'),
                                        ),
                                      ),
                                    )
                                  : Image.file(File(nid!)),
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
          ],
        ),
      ),
    );
  }

  final ImagePicker imagePicker = ImagePicker();
  Future profilepicked(ImageSource source) async {
    final XFile? selectImage = await imagePicker.pickImage(source: source);
    setState(() {
      images = selectImage!.path;
    });
  }

  Future nidpicker(ImageSource source) async {
    final XFile? getimage = await imagePicker.pickImage(source: source);
    setState(() {
      nid = getimage!.path;
    });
  }
}
