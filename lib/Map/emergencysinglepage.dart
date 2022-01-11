// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hmo/model/safezone.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/view/home/screen_section/helpmeout/helpland.dart';

class Emergencysinglepage extends StatefulWidget {
  const Emergencysinglepage({Key? key}) : super(key: key);

  @override
  _NearestSafeZoneState createState() => _NearestSafeZoneState();
}

class _NearestSafeZoneState extends State<Emergencysinglepage> {
  Completer<GoogleMapController> completer = Completer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                  target: LatLng(24.044712, 89.995997), zoom: 6.8),
            ),
          ),
          Positioned(
            top: 50,
            left: 15,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 1 / 3,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1 / 9,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: safezone.length,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1 / 1.1,
                        height: MediaQuery.of(context).size.height * 1 / 9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: kElevationToShadow[4],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        '${safezone[index].name}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        '${safezone[index].location}',
                                        style: TextStyle(
                                          color: Color(
                                              COLOR.coustomColors('#707070')),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: ImageIcon(AssetImage(
                                      'assets/icons/Icon metro-my-location@1X.png'))),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1 / 4,
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
                                    color:
                                        Color(COLOR.coustomColors('#FF4C4C')),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Habiba Annie',
                                  style: TextStyle(
                                    color:
                                        Color(COLOR.coustomColors('#00B27A')),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  '3.9 km',
                                  style: TextStyle(
                                    color:
                                        Color(COLOR.coustomColors('#707070')),
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
                                image: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/en/2/2f/Profile_image_Nadia_Lim_chef_2014.jpg'),
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
