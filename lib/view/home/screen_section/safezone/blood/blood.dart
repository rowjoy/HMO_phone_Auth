// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, avoid_print

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hmo/model/blood_request.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/utils/snackber.dart';
import 'package:hmo/view/home/screen_section/carddetailsview/bloodrequestcard.dart';
import 'package:hmo/view/home/screen_section/safezone/slectedfield/bloodgroup.dart';
import 'package:hmo/view/home/screen_section/safezone/slectedfield/datepicer.dart';
import 'package:hmo/view/home/screen_section/safezone/slectedfield/locationseleced.dart';
import 'package:hmo/view/home/screen_section/safezone/slectedfield/utils.dart';
import 'package:hmo/widget/appber.dart';
import 'package:hmo/widget/button.dart';

class Bloodpage extends StatefulWidget {
  static const path = 'Bloodpage';
  const Bloodpage({Key? key}) : super(key: key);

  @override
  _BloodpageState createState() => _BloodpageState();
}

class _BloodpageState extends State<Bloodpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          'Blood Profile',
          style: TextStyle(color: Color(COLOR.coustomColors('#303030'))),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        'Next Donation',
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#FF4C4C')),
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'February 14, 2022',
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#FF4C4C'))
                              .withOpacity(0.7),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Available on 96 days',
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#707070')),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: kElevationToShadow[4],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "BLOOD NEEDED?",
                            style: TextStyle(
                              color: Color(COLOR.coustomColors('#707070')),
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Bloodgroup(),
                        SizedBox(
                          height: 10,
                        ),
                        Locationseleced(),
                        SizedBox(
                          height: 10,
                        ),
                        Datepicker(),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 45,
                                width:
                                    MediaQuery.of(context).size.width * 1 / 2,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(COLOR.coustomColors('#00B27A'))),
                                  ),
                                  onPressed: () {
                                    if (selectdate == null) {
                                      print('Please selected date');
                                      showsnckbers(
                                          context,
                                          'Please selected date',
                                          DismissDirection.up);
                                    }
                                  },
                                  child: Text(
                                    'REQUEST',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      color: Color(
                                        COLOR.coustomColors('#FFFFFF'),
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'BLOOD REQUESTS',
                          style: TextStyle(
                            color: Color(COLOR.coustomColors('#FF4C4C')),
                            fontWeight: FontWeight.w800,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: CarouselSlider(
                          items: bloodrequest.map((data) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Bloodcard(
                                              name: '${data.name}',
                                              hospitelname:
                                                  '${data.hospitelname}',
                                              location: '${data.location}',
                                              distance: '${data.distance}',
                                              date: '${data.date}',
                                              bloodgrop: '${data.bloodgrop}',
                                              image: '${data.image}',
                                              time: '${data.time}',
                                            )));
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 5, bottom: 10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: kElevationToShadow[4],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                // ignore: prefer_const_literals_to_create_immutables
                                                children: [
                                                  Text(
                                                    '${data.name}',
                                                    maxLines: 1,
                                                    softWrap: false,
                                                    overflow: TextOverflow.fade,
                                                    style: TextStyle(
                                                      color: Color(
                                                          COLOR.coustomColors(
                                                              '#00B27A')),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1 /
                                                            3.2,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          '${data.distance} km',
                                                          style: TextStyle(
                                                            color: Color(COLOR
                                                                .coustomColors(
                                                                    '#707070')),
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                        Text(
                                                          '${data.time}hr ago',
                                                          style: TextStyle(
                                                            color: Color(COLOR
                                                                .coustomColors(
                                                                    '#707070')),
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 40,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  width: 2,
                                                  color: Colors.red,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      '${data.image}'),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: CircleAvatar(
                                                backgroundColor: Color(COLOR
                                                    .coustomColors('#FF4C4C')),
                                                child: Center(
                                                  child: Text(
                                                    '${data.bloodgrop}',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  // ignore: prefer_const_literals_to_create_immutables
                                                  children: [
                                                    Text(
                                                      '${data.hospitelname}',
                                                      maxLines: 1,
                                                      softWrap: false,
                                                      overflow:
                                                          TextOverflow.fade,
                                                      style: TextStyle(
                                                        color: Color(
                                                            COLOR.coustomColors(
                                                                '#000000')),
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                    Text(
                                                      '${data.location}',
                                                      maxLines: 1,
                                                      softWrap: false,
                                                      overflow:
                                                          TextOverflow.fade,
                                                      style: TextStyle(
                                                        color: Color(
                                                            COLOR.coustomColors(
                                                                '#707070')),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    Text(
                                                      '${data.date}',
                                                      style: TextStyle(
                                                        color: Color(
                                                            COLOR.coustomColors(
                                                                '#FF4C4C')),
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  1 /
                                                  2,
                                              child: ButtonWidget(
                                                padding: EdgeInsets.only(
                                                    left: 5, right: 5),
                                                buttonname: 'Refer Your Friend',
                                                onPressed: () {},
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                          options: CarouselOptions(
                            height: 205,
                            aspectRatio: 16 / 9,
                            enlargeCenterPage: true,
                            enableInfiniteScroll: true,
                            viewportFraction: 0.8,
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
      ),
    );
  }
}
