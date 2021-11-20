// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

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
          Container(
            margin: EdgeInsets.only(left: 60, right: 60, top: 15),
            height: 45,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(COLOR.coustomColors('F6F6F6')),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // ignore: prefer_const_literals_to_create_immutables
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
                  onPressed: () {},
                ),
                Zonesection(
                  image: 'assets/icons/hospital-01@1X.png',
                  zonename: 'Hospital',
                  onPressed: () {},
                ),
                Zonesection(
                  image: 'assets/icons/ambulance-01@1X.png',
                  zonename: 'Ambulance',
                  onPressed: () {},
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
                  onPressed: () {},
                ),
                Zonesection(
                  image: 'assets/icons/blood-donation-01@1X.png',
                  zonename: 'Blood',
                  onPressed: () {},
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
