// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';

class PPoppub extends StatelessWidget {
  final String? image;
  final String? name;
  final String? hospitalname;
  final String? location;
  final String? bloodgroup;
  final String? date;
  const PPoppub(
      {Key? key,
      this.image,
      this.hospitalname,
      this.bloodgroup,
      this.location,
      this.name,
      this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: MediaQuery.of(context).size.height * 1 / 2.5,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.5,
                    color: Color(
                      COLOR.coustomColors('#FF4C4C'),
                    ),
                  ),
                  image: DecorationImage(
                    image: NetworkImage('$image'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                child: Text(
                  '$name'.toUpperCase(),
                  style: TextStyle(
                    color: Color(
                      COLOR.coustomColors('#00B27A'),
                    ),
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                child: Text(
                  '$hospitalname',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: Color(
                              COLOR.coustomColors('#707070'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1 / 2,
                      child: Text(
                        '$location',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(COLOR.coustomColors('#707070')),
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  'Donated:$date',
                  style: TextStyle(
                    color: Color(
                      COLOR.coustomColors('#FF4C4C'),
                    ),
                    fontSize: 13,
                  ),
                ),
              ),
              Container(
                child: CircleAvatar(
                  backgroundColor: Color(COLOR.coustomColors('#FF4C4C')),
                  child: Center(
                    child: Text(
                      '$bloodgroup',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.call,
                        size: 30,
                        color: Color(COLOR.coustomColors('#707070')),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.message_sharp,
                        size: 30,
                        color: Color(COLOR.coustomColors('#707070')),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.email,
                        size: 30,
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
    );
  }
}
