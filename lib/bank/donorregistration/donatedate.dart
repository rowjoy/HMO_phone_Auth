// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/view/home/screen_section/safezone/slectedfield/utils.dart';

class LastDonationdate extends StatefulWidget {
  const LastDonationdate({Key? key}) : super(key: key);

  @override
  _DatepickerState createState() => _DatepickerState();
}

class _DatepickerState extends State<LastDonationdate> {
  Future donationeddate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(DateTime.now().year - 20),
      firstDate: DateTime(DateTime.now().year - 30),
      lastDate: DateTime(DateTime.now().year),
    );

    if (picked != null) {
      setState(() {
        lastdonationdate = "${picked.day}-${picked.month}-${picked.year}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last donation',
            style: TextStyle(
              color: Color(COLOR.coustomColors('#747474')),
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: Color(COLOR.coustomColors('#F6F6F6')),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: lastdonationdate == null
                        ? Text(
                            'Last donation date',
                            style: TextStyle(
                              color: Color(COLOR.coustomColors('#747474')),
                              fontSize: 15,
                            ),
                          )
                        : Text(
                            '$lastdonationdate',
                            style: TextStyle(
                              color: Color(COLOR.coustomColors('#747474')),
                              fontSize: 15,
                            ),
                          ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Center(
                      child: IconButton(
                          onPressed: () {
                            donationeddate();
                          },
                          icon: Icon(
                            Icons.calendar_today,
                            size: 20,
                            color: Color(COLOR.coustomColors('#747474')),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
