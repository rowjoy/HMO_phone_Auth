// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/widget/appber.dart';

class Bloodcard extends StatefulWidget {
  final String name;
  final String distance;
  final String bloodgrop;
  final String hospitelname;
  final String location;
  final String date;
  final String image;
  final String time;
  const Bloodcard({
    Key? key,
    required this.name,
    required this.distance,
    required this.bloodgrop,
    required this.date,
    required this.hospitelname,
    required this.image,
    required this.location,
    required this.time,
  }) : super(key: key);

  @override
  _BloodcardState createState() => _BloodcardState();
}

class _BloodcardState extends State<Bloodcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Appbar(
              text: 'BLOOD REQUESTS',
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 15),
              width: MediaQuery.of(context).size.width,
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            '${widget.time} hr ago',
                            style: TextStyle(
                              color: Color(COLOR.coustomColors('#707070')),
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Colors.red,
                        ),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(widget.image),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Color(COLOR.coustomColors('#00B27A')),
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.hospitelname,
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.fade,
                      style: TextStyle(
                        color: Color(COLOR.coustomColors('#000000')),
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(
                              Icons.location_on,
                              size: 15,
                              color: Color(
                                COLOR.coustomColors('#707070'),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 1 / 1.5,
                            child: Text(
                              '${widget.location}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(COLOR.coustomColors('#707070')),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '${widget.distance}km',
                      style: TextStyle(
                        color: Color(COLOR.coustomColors('#707070')),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.date,
                      style: TextStyle(
                        color: Color(COLOR.coustomColors('#FF4C4C')),
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: CircleAvatar(
                        backgroundColor: Color(COLOR.coustomColors('#FF4C4C')),
                        child: Center(
                          child: Text(
                            widget.bloodgrop,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
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
          ],
        ),
      ),
    );
  }
}
