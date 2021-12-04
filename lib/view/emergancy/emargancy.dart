// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, unused_local_variable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/view/emergancy/components/division.dart';
import 'package:hmo/view/emergancy/components/service.dart';
import 'package:hmo/widget/drawer/drawer.dart';

class Emargancypage extends StatefulWidget {
  static const String path = "Emargancypage";
  const Emargancypage({Key? key}) : super(key: key);

  @override
  _EmargancypageState createState() => _EmargancypageState();
}

class _EmargancypageState extends State<Emargancypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(COLOR.coustomColors('00B27A')),
        onPressed: () {
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
                            color: Color(COLOR.coustomColors('#DBDBDB')),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          selected: false,
                          tileColor: Color(COLOR.coustomColors('F6F6F6')),
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
                          tileColor: Color(COLOR.coustomColors('F6F6F6')),
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
        child: Icon(Icons.phone),
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
        title: Text('Emergency Contact'),
        titleTextStyle: TextStyle(
          color: Color(
            COLOR.coustomColors('#242424'),
          ),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.download,
                color: Color(COLOR.coustomColors('303030')),
              ))
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Select Service',
                          style: TextStyle(
                            color: Color(
                              COLOR.coustomColors('#747474'),
                            ),
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Servise(),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 20,
                    bottom: 7,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Select Division',
                          style: TextStyle(
                            color: Color(
                              COLOR.coustomColors('#747474'),
                            ),
                            fontSize: 13,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 1 / 2.8,
                              child: Division(),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 1 / 2,
                              margin: EdgeInsets.only(top: 5),
                              child: SizedBox(
                                height: 50,
                                child: TextFormField(
                                  style: TextStyle(
                                    color:
                                        Color(COLOR.coustomColors('#747474')),
                                    fontSize: 12,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: 'Search name',
                                    hintStyle: TextStyle(
                                      color:
                                          Color(COLOR.coustomColors('#747474')),
                                      fontSize: 12,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.search,
                                      size: 20,
                                      color: Colors.grey,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.grey,
                                      ),
                                    ),
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
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          onLongPress: () {
                            setState(() {});
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
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
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
