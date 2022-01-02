// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hmo/model/plasamarequest.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/view/home/screen_section/carddetailsview/plasamarequestcard.dart';

class PlasamaRequest extends StatelessWidget {
  const PlasamaRequest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: plasamarequest.map((data) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Plasamacard(
                          name: '${data.name}',
                          hospitelname: '${data.hospitelname}',
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
                                'PLASMA REQUEST',
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
                                '${data.distance} km',
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
                        Expanded(
                          flex: 1,
                          child: CircleAvatar(
                            backgroundColor:
                                Color(COLOR.coustomColors('#FF4C4C')),
                            child: Center(
                              child: Text(
                                '${data.bloodgrop}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  '${data.hospitelname}',
                                  maxLines: 1,
                                  softWrap: false,
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                    color:
                                        Color(COLOR.coustomColors('#000000')),
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  '${data.location}',
                                  maxLines: 1,
                                  softWrap: false,
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                    color:
                                        Color(COLOR.coustomColors('#707070')),
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  '${data.date}',
                                  style: TextStyle(
                                    color:
                                        Color(COLOR.coustomColors('#FF4C4C')),
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
