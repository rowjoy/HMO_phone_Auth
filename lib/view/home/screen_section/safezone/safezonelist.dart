// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

class Safezoneslist extends StatefulWidget {
  final String? name;
  const Safezoneslist({Key? key, this.name}) : super(key: key);

  @override
  _SafezoneState createState() => _SafezoneState();
}

class _SafezoneState extends State<Safezoneslist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.blue,
          ),
          Positioned(
            top: 60,
            child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back)),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text(
                        '${widget.name}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      ),
                    )
                  ],
                )),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 1 / 4.5,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider(
                items: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 205,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: kElevationToShadow[4],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Uttara West Thana',
                                  style: TextStyle(
                                    color: Color(
                                      COLOR.coustomColors('#00B27A'),
                                    ),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  'Sector 11, Uttara, Dhaka',
                                  style: TextStyle(
                                    color:
                                        Color(COLOR.coustomColors('#707070')),
                                    fontSize: 11,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Row(
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 11,
                                              color: Color(COLOR
                                                  .coustomColors('#707070')),
                                            ),
                                            Text(
                                              '3.9 km',
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Color(COLOR
                                                    .coustomColors('#707070')),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        child: Row(
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Icon(
                                              Icons.timer,
                                              size: 11,
                                              color: Color(COLOR
                                                  .coustomColors('#707070')),
                                            ),
                                            Text(
                                              '15 mins',
                                              style: TextStyle(
                                                fontSize: 11,
                                                color: Color(COLOR
                                                    .coustomColors('#707070')),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 25,
                                  width:
                                      MediaQuery.of(context).size.width * 1 / 5,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.5,
                                        color: Color(
                                            COLOR.coustomColors('#00B27A'))),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(
                                        Icons.call,
                                        size: 14,
                                        color: Color(
                                            COLOR.coustomColors('#00B27A')),
                                      ),
                                      Text(
                                        'Call',
                                        style: TextStyle(
                                          color: Color(
                                              COLOR.coustomColors('#00B27A')),
                                          fontSize: 14,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 25,
                                  width: MediaQuery.of(context).size.width *
                                      1 /
                                      3.5,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.5,
                                        color: Color(
                                            COLOR.coustomColors('#00B27A'))),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(
                                        Icons.message_sharp,
                                        size: 14,
                                        color: Color(
                                            COLOR.coustomColors('#00B27A')),
                                      ),
                                      Text(
                                        'Message',
                                        style: TextStyle(
                                          color: Color(
                                              COLOR.coustomColors('#00B27A')),
                                          fontSize: 14,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 25,
                                  width:
                                      MediaQuery.of(context).size.width * 1 / 5,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.5,
                                        color: Color(
                                            COLOR.coustomColors('#00B27A'))),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Icon(
                                        Icons.email,
                                        size: 14,
                                        color: Color(
                                            COLOR.coustomColors('#00B27A')),
                                      ),
                                      Text(
                                        'Mail',
                                        style: TextStyle(
                                          color: Color(
                                              COLOR.coustomColors('#00B27A')),
                                          fontSize: 14,
                                        ),
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
                  ),
                ],
                options: CarouselOptions(
                  height: 120,
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  viewportFraction: 0.8,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
