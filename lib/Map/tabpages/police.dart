// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hmo/utils/colors.dart';

class Policetab extends StatefulWidget {
  const Policetab({Key? key}) : super(key: key);

  @override
  _PolicetabState createState() => _PolicetabState();
}

class _PolicetabState extends State<Policetab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GoogleMap(
              zoomControlsEnabled: false,
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                  target: LatLng(24.044712, 89.995997), zoom: 6.8),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).size.height * 1 / 8,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1 / 8,
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
                                  'Police Station',
                                  style: TextStyle(
                                    color:
                                        Color(COLOR.coustomColors('#FF4C4C')),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Uttara West Police Station',
                                  style: TextStyle(
                                    color:
                                        Color(COLOR.coustomColors('#00B27A')),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '3.9 km',
                            style: TextStyle(
                              color: Color(COLOR.coustomColors('#707070')),
                              fontSize: 14,
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
                            icon: ImageIcon(
                              AssetImage(
                                  'assets/icons/Icon ionic-ios-call@1X.png'),
                              color: Color(COLOR.coustomColors('#707070')),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: ImageIcon(
                              AssetImage(
                                  'assets/icons/Icon material-message@1X.png'),
                              color: Color(COLOR.coustomColors('#707070')),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: ImageIcon(
                              AssetImage(
                                  'assets/icons/Icon material-email@1X.png'),
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
          ),
        ],
      ),
    );
  }
}
