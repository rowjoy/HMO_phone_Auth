// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Activehmotab extends StatefulWidget {
  const Activehmotab({Key? key}) : super(key: key);

  @override
  _ActivehmotabState createState() => _ActivehmotabState();
}

class _ActivehmotabState extends State<Activehmotab> {
  late bool isloding = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: isloding
                ? CircularProgressIndicator(
                    color: Colors.red,
                    backgroundColor: Colors.black,
                  )
                : GoogleMap(
                    mapType: MapType.normal,
                    zoomControlsEnabled: false,
                    initialCameraPosition: CameraPosition(
                        target: LatLng(24.044712, 89.995997), zoom: 6.8),
                  ),
          ),
        ],
      ),
    );
  }
}
