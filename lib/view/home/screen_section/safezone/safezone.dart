// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hmo/Map/activestatus.dart';

import 'package:hmo/bank/donorsregistration/bdonorregistration.dart';
import 'package:hmo/bank/donorsregistration/pdonorregistration.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/Map/safezonelist.dart';

class Safezone extends StatelessWidget {
  const Safezone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, left: 15, right: 15),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[4],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 1 / 2,
              height: 45,
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                    backgroundColor: MaterialStateProperty.all(
                        Color(COLOR.coustomColors('F6F6F6'))),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Emergencysinglepage()));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ActiveStatus()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        AssetImage('assets/icons/Path 16@1X.png'),
                        color: Color(
                          COLOR.coustomColors('00B27A'),
                        ),
                      ),
                      Text(
                        'Nearest Safe Zone',
                        style: TextStyle(
                          color: Color(
                            COLOR.coustomColors('00B27A'),
                          ),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Safezoneslist(
                                  name: 'Police station',
                                )));
                  },
                  child: Zonesection(
                    image: 'assets/icons/police-badge-01@1X.png',
                    zonename: 'Police Station',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Safezoneslist(
                                  name: 'Hospital',
                                )));
                  },
                  child: Zonesection(
                    image: 'assets/icons/hospital-01@1X.png',
                    zonename: 'Hospital',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Safezoneslist(
                                  name: 'Ambulance',
                                )));
                  },
                  child: Zonesection(
                    image: 'assets/icons/ambulance-01@1X.png',
                    zonename: 'Ambulance',
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Safezoneslist(
                                  name: 'Fire Station',
                                )));
                  },
                  child: Zonesection(
                    image: 'assets/icons/fire-truck-01@1X.png',
                    zonename: 'Fire Station',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BloodDonorRegistration()));
                  },
                  child: Zonesection(
                    image: 'assets/icons/blood-donation-01@1X.png',
                    zonename: 'Blood',
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PlasamadonorRegistration()));
                  },
                  child: Zonesection(
                    image: 'assets/icons/Plazma-01@1X.png',
                    zonename: 'Plasma',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Zonesection extends StatelessWidget {
  final String? image;
  final String? zonename;

  const Zonesection({
    Key? key,
    this.image,
    this.zonename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1 / 4,
      decoration: BoxDecoration(
        color: Color(
          COLOR.coustomColors('00B27A'),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: Image.asset(image!),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                ),
                child: Container(
                  height: 28,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      zonename!,
                      style: TextStyle(
                        fontSize: 7,
                        color: Color(
                          COLOR.coustomColors('00B27A'),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
