// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/widget/drawer/components/safezone/addsafezon.dart';
import 'package:hmo/widget/drawer/components/safezone/locationinfo.dart';

class Sefezons extends StatefulWidget {
  static const String path = "Safezoneadd";
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
          'Safe Zone',
          style: TextStyle(color: Color(COLOR.coustomColors('#303030'))),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Container(
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
    );
  }
}
