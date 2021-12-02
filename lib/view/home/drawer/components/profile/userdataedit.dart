// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/widget/appber.dart';
import 'package:hmo/widget/button.dart';
import 'package:hmo/widget/from_field.dart';

class UserdataEdit extends StatefulWidget {
  final String? frielname;
  final String? frielddata;
  const UserdataEdit({Key? key, this.frielname, this.frielddata})
      : super(key: key);

  @override
  _UserdataEditState createState() => _UserdataEditState();
}

class _UserdataEditState extends State<UserdataEdit> {
  TextEditingController editcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Appbar(
                text: "Edit",
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 7),
                        child: Text(
                          widget.frielname!,
                          style: TextStyle(
                            color: Color(COLOR.coustomColors('#303030')),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      TextFromFields(
                        controller: editcontroller,
                        hintText: widget.frielddata!,
                      ),
                    ],
                  ),
                ),
              ),
              ButtonWidget(
                padding: EdgeInsets.only(bottom: 5, left: 10, right: 10),
                buttonname: 'Save',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
