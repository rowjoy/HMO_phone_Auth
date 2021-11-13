// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:hmo/registration/chousechip.dart';
import 'package:hmo/registration/contacts.dart';
import 'package:hmo/widget/button.dart';
import 'package:hmo/widget/from_field.dart';

class Registration extends StatefulWidget {
  static const String path = "Registration";
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Basic Information'),
        titleTextStyle: Theme.of(context).textTheme.headline4,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, bottom: 20, top: 15),
                child: AspectRatio(
                  aspectRatio: 2.5,
                  child: Image.asset('assets/images/Group_594.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                height: 380,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: kElevationToShadow[4],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  margin:
                      EdgeInsets.only(left: 15, right: 15, bottom: 15, top: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Full name',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      FromField(
                        height: 50,
                        hintText: 'Full name',
                        keyboardType: TextInputType.text,
                        style: Theme.of(context).textTheme.bodyText2,
                        hintStyle: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        'Date of Birth',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      FromField(
                        height: 50,
                        hintText: 'Date of Birth',
                        keyboardType: TextInputType.text,
                        style: Theme.of(context).textTheme.bodyText2,
                        hintStyle: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        'Gender',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Chousechip(),
                      Text(
                        'Be Verified by your NID card',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      FromField(
                        height: 50,
                        style: Theme.of(context).textTheme.bodyText2,
                        hintText: 'IMG123456',
                        hintStyle: Theme.of(context).textTheme.bodyText2,
                        keyboardType: TextInputType.text,
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.upload_file),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ButtonWidget(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
                buttonname: 'Continue',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContactsNumber()));
                },
              )
            ],
          ),
        )),
      ),
    );
  }
}
