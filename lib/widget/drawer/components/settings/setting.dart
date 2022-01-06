// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, curly_braces_in_flow_control_structures, avoid_print

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/widget/appber.dart';

class Settingpage extends StatefulWidget {
  static const String path = 'Settingpage';
  const Settingpage({Key? key}) : super(key: key);

  @override
  _SettingpageState createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  late List<bool> isselected;
  bool isActivated = false;
  bool islocation = false;
  bool isNotification = false;
  bool isSmS = false;
  bool isphone = false;
  bool iscontact = false;
  @override
  void initState() {
    isselected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Appbar(
              text: 'Settings',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Language',
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#747474')),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        tileColor: Color(COLOR.coustomColors('#F6F6F6')),
                        leading: ImageIcon(AssetImage(
                            'assets/icons/Icon metro-language@1X.png')),
                        title: Text('English'),
                        trailing: ToggleButtons(
                          children: [
                            Text(
                              'A',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              'BN',
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                          onPressed: (newindex) {
                            setState(() {
                              for (int index = 0;
                                  index < isselected.length;
                                  index++)
                                if (index == newindex) {
                                  isselected[index] = true;
                                } else {
                                  isselected[index] = false;
                                }
                            });
                          },
                          isSelected: isselected,
                          borderWidth: 0,
                          color: Color(COLOR.coustomColors('#707070')),
                          selectedBorderColor:
                              Color(COLOR.coustomColors('#F6F6F6')),
                          selectedColor: Colors.white,
                          fillColor: Color(COLOR.coustomColors('#00B27A')),
                          borderColor: Color(COLOR.coustomColors('#F6F6F6')),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tutorial Mode',
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#747474')),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        tileColor: Color(COLOR.coustomColors('#F6F6F6')),
                        leading: Image.asset(
                          'assets/images/Group 445@1X.png',
                        ),
                        title: Text('Activated'),
                        trailing: Switch(
                            activeColor: Color(COLOR.coustomColors('#00B27A')),
                            value: isActivated,
                            onChanged: (value) {
                              setState(() {
                                isActivated = value;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Show in Notification Bar',
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#747474')),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        tileColor: Color(COLOR.coustomColors('#F6F6F6')),
                        leading: Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Image.asset(
                            'assets/icons/Icon material-space-bar@1X.png',
                          ),
                        ),
                        title: Text('Activated'),
                        trailing: Switch(
                            activeColor: Color(COLOR.coustomColors('#00B27A')),
                            value: isNotification,
                            onChanged: (value) {
                              setState(() {
                                isNotification = value;
                                if (value == false) {
                                  print('1');
                                } else if (value == true) {
                                  print('2');
                                }
                              });
                            }),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'DO NOT TURN OFF ANY PERMISSIONS',
                        style: TextStyle(
                          color: Color(
                            COLOR.coustomColors('707070'),
                          ),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Image.asset(
                        'assets/images/Group 445@1X.png',
                        height: 10,
                        width: 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location Permission',
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#747474')),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        tileColor: Color(COLOR.coustomColors('#F6F6F6')),
                        leading: Image.asset(
                          'assets/icons/location_on_black_24dp@1X.png',
                        ),
                        title: Text('Location permission'),
                        trailing: Switch(
                            activeColor: Color(COLOR.coustomColors('#00B27A')),
                            value: islocation,
                            onChanged: (value) {
                              setState(() {
                                islocation = value;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact permission',
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#747474')),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        tileColor: Color(COLOR.coustomColors('#F6F6F6')),
                        leading: Image.asset(
                          'assets/icons/contacts_black_24dp@1X.png',
                        ),
                        title: Text('Contact permission'),
                        trailing: Switch(
                            activeColor: Color(COLOR.coustomColors('#00B27A')),
                            value: iscontact,
                            onChanged: (value) {
                              setState(() {
                                iscontact = value;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Phone permission',
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#747474')),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        tileColor: Color(COLOR.coustomColors('#F6F6F6')),
                        leading: Icon(Icons.phone),
                        title: Text('Phone permission'),
                        trailing: Switch(
                            activeColor: Color(COLOR.coustomColors('#00B27A')),
                            value: isphone,
                            onChanged: (value) {
                              setState(() {
                                isphone = value;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sms permission',
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#747474')),
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        tileColor: Color(COLOR.coustomColors('#F6F6F6')),
                        leading: Icon(Icons.comment),
                        title: Text('Sms permission'),
                        trailing: Switch(
                            activeColor: Color(COLOR.coustomColors('#00B27A')),
                            value: isSmS,
                            onChanged: (value) {
                              setState(() {
                                isSmS = value;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
