// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
        ],
      ),
    );
  }
}
