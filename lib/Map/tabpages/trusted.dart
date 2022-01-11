// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Trustedtab extends StatefulWidget {
  const Trustedtab({Key? key}) : super(key: key);

  @override
  _TrastedtabState createState() => _TrastedtabState();
}

class _TrastedtabState extends State<Trustedtab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GoogleMap(
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
