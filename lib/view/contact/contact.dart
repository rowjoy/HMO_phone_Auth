// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/view/contact/newcontactadd.dart';

class Contactpage extends StatefulWidget {
  static const String path = "Contactpage";
  const Contactpage({Key? key}) : super(key: key);

  @override
  _ContactpageState createState() => _ContactpageState();
}

class _ContactpageState extends State<Contactpage> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(COLOR.coustomColors('#00B27A')),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewContact()));
        },
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
        title: Text('Trusted Contacts'),
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
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  selected: selected,
                  onLongPress: () {
                    setState(() {
                      if (selected == false) {
                        selected = true;
                      } else if (selected == true) {
                        selected = false;
                      }
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  selectedTileColor: Color(COLOR.coustomColors('#FF4C4C')),
                  tileColor: Color(COLOR.coustomColors('F6F6F6')),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Center(
                      child: Icon(
                        Icons.person,
                      ),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Name',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(
                            COLOR.coustomColors('707070'),
                          ),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '+8801234657890',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(
                            COLOR.coustomColors('747474'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_outlined)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
