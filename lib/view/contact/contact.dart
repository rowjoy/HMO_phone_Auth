// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hmo/Map/contactdetiles.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/view/contact/contactedit.dart';
import 'package:hmo/view/contact/newcontactadd.dart';
import 'package:hmo/widget/drawer/drawer.dart';

class Contactpage extends StatefulWidget {
  static const String path = "Contactpage";
  const Contactpage({Key? key}) : super(key: key);

  @override
  _ContactpageState createState() => _ContactpageState();
}

class _ContactpageState extends State<Contactpage> {
  bool resknumber = false;
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
      drawer: Drawer(
        child: HomeDrawer(),
      ),
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
                padding: const EdgeInsets.only(
                    top: 8, bottom: 8, left: 10, right: 10),
                child: Slidable(
                  key: const ValueKey(0),
                  endActionPane:
                      ActionPane(motion: const ScrollMotion(), children: [
                    SlidableAction(
                      onPressed: (value) {},
                      backgroundColor: Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                  ]),
                  startActionPane: ActionPane(
                    motion: ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (value) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Contactedit()));
                        },
                        backgroundColor: Color(COLOR.coustomColors('#00B27A')),
                        foregroundColor: Colors.white,
                        icon: Icons.edit,
                        label: 'Edit',
                      ),
                    ],
                  ),
                  child: ListTile(
                    onTap: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )),
                          context: context,
                          builder: (contex) {
                            return Container(
                              height: 160,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 6,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Color(
                                            COLOR.coustomColors('#DBDBDB')),
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    ListTile(
                                      selected: false,
                                      onTap: () {},
                                      tileColor:
                                          Color(COLOR.coustomColors('F6F6F6')),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      leading: Icon(Icons.phone),
                                      title: Text(
                                        'Call',
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    ListTile(
                                      selected: false,
                                      onTap: () {},
                                      tileColor:
                                          Color(COLOR.coustomColors('F6F6F6')),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      leading: Icon(Icons.comment),
                                      title: Text(
                                        'SMS',
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    tileColor: Color(COLOR.coustomColors('#F6F6F6')),
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(Icons.person),
                    ),
                    title: Text('Contact Name'),
                    subtitle: Text('+8801234657890'),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ContactDetiles()));
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        )),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
