// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/widget/button.dart';
import 'package:hmo/widget/from_field.dart';

class NewContact extends StatefulWidget {
  const NewContact({Key? key}) : super(key: key);

  @override
  _NewContactState createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
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
              Container(
                margin: EdgeInsets.only(top: 30),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  title: Text(
                    'Add New Contact',
                    style: TextStyle(
                      color: Color(
                        COLOR.coustomColors('#242424'),
                      ),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      Form(
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
                                    hintText: 'Contact name',
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
                                    hintText: 'Contact number',
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
                                    hintText: 'Member address',
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
                  Navigator.pop(context);
                },
                buttonname: 'Add to Contact',
              )
            ],
          ),
        ),
      ),
    );
  }
}
