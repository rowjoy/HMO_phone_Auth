// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hmo/bank/plasamabank/pselecteddivision.dart';
import 'package:hmo/bank/plasamabank/pseletedbloodgroup.dart';
import 'package:hmo/utils/colors.dart';

class PlasamaBank extends StatefulWidget {
  static const String path = "Plasamabank";
  const PlasamaBank({Key? key}) : super(key: key);

  @override
  _BloodBankState createState() => _BloodBankState();
}

class _BloodBankState extends State<PlasamaBank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          'HMO Plasma Donors',
          style: TextStyle(color: Color(COLOR.coustomColors('#303030'))),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    PSelectBloodGroup(),
                    PSelectDivision(),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          tileColor: Color(COLOR.coustomColors('#F6F6F6')),
                          leading: CircleAvatar(child: Icon(Icons.person)),
                          title: Text(
                            'Contact Name',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color(COLOR.coustomColors('#303030')),
                            ),
                          ),
                          subtitle: Text(
                            '0178310948',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(COLOR.coustomColors('#747474')),
                            ),
                          ),
                          trailing: Container(
                            height: MediaQuery.of(context).size.height,
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Dhaka',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color:
                                        Color(COLOR.coustomColors('#747474')),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'O+ (ve)',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        Color(COLOR.coustomColors('#303030')),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
