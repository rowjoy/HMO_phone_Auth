// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hmo/widget/appber.dart';
import 'package:image_picker/image_picker.dart';

class Profilepage extends StatefulWidget {
  static const String path = "Profilepage";
  const Profilepage({Key? key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  String? images;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Appbar(
              text: 'Profile',
            ),
            Container(
              child: Stack(
                children: [
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: CircleAvatar(
                      radius: 40,
                      child: ClipOval(
                        child: images == null
                            ? Image.asset(
                                'assets/icons/blank-profil.png',
                                fit: BoxFit.cover,
                              )
                            : Image.file(
                                File(images!),
                                fit: BoxFit.cover,
                              ),
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
                        profilepicked();
                      },
                      icon: Icon(
                        Icons.camera_enhance_rounded,
                        color: Colors.black.withOpacity(0.7),
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
  Future profilepicked() async {
    final XFile? selectImage =
        await imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      images = selectImage!.path;
    });
  }
}
