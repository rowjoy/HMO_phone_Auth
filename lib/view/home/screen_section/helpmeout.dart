// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hmo/model/help_me_out.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/view/home/screen_section/helpmeout/helpland.dart';

class Helpmeout extends StatelessWidget {
  const Helpmeout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: helpmeout.map((data) {
        return Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              'HELP ME OUT',
                              style: TextStyle(
                                color: Color(COLOR.coustomColors('#FF4C4C')),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '${data.name}',
                              maxLines: 1,
                              softWrap: false,
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                color: Color(COLOR.coustomColors('#00B27A')),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '${data.destence} km',
                              style: TextStyle(
                                color: Color(COLOR.coustomColors('#707070')),
                                fontSize: 14,
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
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage('${data.image}'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Helpsignal(
                        color: Colors.red,
                        name: 'Police',
                      ),
                      Helpsignal(
                        color: Color(COLOR.coustomColors('#00B27A')),
                        name: 'Hospital',
                      ),
                      Helpsignal(
                        color: Color(COLOR.coustomColors('#00B27A')),
                        name: 'Ambulance',
                      ),
                      Helpsignal(
                        color: Color(COLOR.coustomColors('#00B27A')),
                        name: 'Fire',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.call,
                          size: 30,
                          color: Color(COLOR.coustomColors('#707070')),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.message_sharp,
                          size: 30,
                          color: Color(COLOR.coustomColors('#707070')),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.email,
                          size: 30,
                          color: Color(COLOR.coustomColors('#707070')),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
    );
  }
}
