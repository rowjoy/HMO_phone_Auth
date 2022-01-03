// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/view/home/home_tab_section/nearest_safe_zone.dart';
import 'package:hmo/view/home/screen_section/safezone/blood.dart';
import 'package:hmo/view/home/screen_section/safezone/safezonelist.dart';

class Safezone extends StatelessWidget {
  const Safezone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, left: 15, right: 15),
      width: MediaQuery.of(context).size.width,
      height: 320,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NearestSafeZone()));
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
                Zonesection(
                  image: 'assets/icons/police-badge-01@1X.png',
                  zonename: 'Police Station',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Safezoneslist(
                                  name: 'Police station',
                                )));
                  },
                ),
                Zonesection(
                  image: 'assets/icons/hospital-01@1X.png',
                  zonename: 'Hospital',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Safezoneslist(
                                  name: 'Hospital',
                                )));
                  },
                ),
                Zonesection(
                  image: 'assets/icons/ambulance-01@1X.png',
                  zonename: 'Ambulance',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Safezoneslist(
                                  name: 'Ambulance',
                                )));
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Zonesection(
                  image: 'assets/icons/fire-truck-01@1X.png',
                  zonename: 'Fire Station',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Safezoneslist(
                                  name: 'Fire Station',
                                )));
                  },
                ),
                Zonesection(
                  image: 'assets/icons/blood-donation-01@1X.png',
                  zonename: 'Blood',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Bloodpage()));
                  },
                ),
                Zonesection(
                  image: 'assets/icons/Plazma-01@1X.png',
                  zonename: 'Plasma',
                  onPressed: () {},
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
  final void Function()? onPressed;
  const Zonesection({
    Key? key,
    this.image,
    this.zonename,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width * 1 / 4,
      decoration: BoxDecoration(
        color: Color(
          COLOR.coustomColors('00B27A'),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: Image.asset(image!),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: SizedBox(
                height: 28,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color(
                        COLOR.coustomColors('#FFFFFF'),
                      ),
                    ),
                  ),
                  onPressed: onPressed,
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
    );
  }
}
