// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/view/home/drawer/components/profile/userinfofrield.dart';
import 'package:hmo/view/home/drawer/components/safezone/addsafezon.dart';
import 'package:hmo/view/home/drawer/components/safezone/locationinfo.dart';

class Sefezons extends StatefulWidget {
  const Sefezons({Key? key}) : super(key: key);

  @override
  _SefezonState createState() => _SefezonState();
}

class _SefezonState extends State<Sefezons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ADDsafezon()));
        },
        backgroundColor: Color(COLOR.coustomColors('#00B27A')),
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          );
        }),
        title: Text('Safe Zone'),
        titleTextStyle: TextStyle(
          color: Color(
            COLOR.coustomColors('#242424'),
          ),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Home',
                            style: TextStyle(
                              color: Color(COLOR.coustomColors('#303030')),
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Edit',
                            style: TextStyle(
                              color: Color(COLOR.coustomColors('#303030')),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Locationinfo(
                      location: 'Dhaka, Bangladesh',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 15),
                height: 1,
                width: MediaQuery.of(context).size.width,
                color: Color(COLOR.coustomColors('#303030')).withOpacity(0.5),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'Others',
                      style: TextStyle(
                        color: Color(COLOR.coustomColors('#303030')),
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Edit',
                      style: TextStyle(
                        color: Color(COLOR.coustomColors('#303030')),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Locationinfo(
                location: 'Dhaka, Bangladesh',
                onTap: () {},
              ),
              Locationinfo(
                location: 'Dhaka, Bangladesh',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
