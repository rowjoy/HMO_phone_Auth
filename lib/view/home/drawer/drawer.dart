// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/view/home/drawer/listlile.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: CircleAvatar(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ashraful Parvez',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                          child: Image.asset('assets/icons/Path 1406@1X.png')),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                '+8801670467556',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 3),
            height: 2,
            width: MediaQuery.of(context).size.width,
            color: Color(COLOR.coustomColors('#747474')).withOpacity(0.5),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Drawerlisttile(
                  selected: false,
                  onLongPress: () {},
                  onTap: () {},
                  image:
                      AssetImage('assets/icons/person_black_24dp (1)@1X.png'),
                  text: 'Profile',
                ),
                Drawerlisttile(
                  selected: false,
                  onLongPress: () {},
                  onTap: () {},
                  image: AssetImage('assets/icons/contacts_black_24dp@1X.png'),
                  text: 'Trusted Contact',
                ),
                Drawerlisttile(
                  selected: false,
                  onLongPress: () {},
                  onTap: () {},
                  image:
                      AssetImage('assets/icons/location_on_black_24dp@1X.png'),
                  text: 'Safe Zone',
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  color: Color(COLOR.coustomColors('#747474')).withOpacity(0.5),
                ),
                Drawerlisttile(
                  selected: false,
                  onLongPress: () {},
                  onTap: () {},
                  image:
                      AssetImage('assets/icons/star_border_black_24dp@1X.png'),
                  text: 'Rate us',
                ),
                Drawerlisttile(
                  selected: false,
                  onLongPress: () {},
                  onTap: () {},
                  image: AssetImage('assets/icons/share_black_24dp@1X.png'),
                  text: 'Share us',
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  color: Color(COLOR.coustomColors('#747474')).withOpacity(0.5),
                ),
                Drawerlisttile(
                  selected: false,
                  onLongPress: () {},
                  onTap: () {},
                  image: AssetImage('assets/icons/settings_black_24dp@1X.png'),
                  text: 'Settings',
                ),
                Drawerlisttile(
                  selected: false,
                  onLongPress: () {},
                  onTap: () {},
                  image: AssetImage(
                      'assets/icons/error_outline_black_24dp@1X.png'),
                  text: 'About us',
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width,
                  color: Color(COLOR.coustomColors('#747474')).withOpacity(0.5),
                ),
                Drawerlisttile(
                  selected: false,
                  onLongPress: () {},
                  onTap: () {},
                  image: AssetImage('assets/icons/chat_black_24dp@1X.png'),
                  text: 'Contact us',
                ),
                Drawerlisttile(
                  selected: false,
                  onLongPress: () {},
                  onTap: () {},
                  image:
                      AssetImage('assets/icons/privacy_tip_black_24dp@1X.png'),
                  text: 'Privacy Policy',
                ),
                Drawerlisttile(
                  selected: false,
                  onLongPress: () {},
                  onTap: () {},
                  image: AssetImage('assets/icons/logout_black_24dp@1X.png'),
                  text: 'Log Out',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
