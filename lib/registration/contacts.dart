// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:hmo/registration/location.dart';
import 'package:hmo/registration/numberlist.dart';
import 'package:hmo/utils/colors.dart';
import 'package:hmo/utils/snackber.dart';
import 'package:hmo/widget/appber.dart';
import 'package:hmo/widget/button.dart';
import 'package:hmo/widget/from_field.dart';

class ContactsNumber extends StatefulWidget {
  static const String path = "ContactNumber";
  const ContactsNumber({Key? key}) : super(key: key);

  @override
  _ContactsNumberState createState() => _ContactsNumberState();
}

class _ContactsNumberState extends State<ContactsNumber> {
  bool checkboxs = false;
  TextEditingController controllerserch = TextEditingController();

  List<Contact> contacts = [];
  List<Contact> searchcontacts = [];
  List<Contact> selectedcontact = [];

  bool? selecednumber;
  int selectedIndex = 0;
  Future getcontact() async {
    List<Contact> _contacts =
        await ContactsService.getContacts(withThumbnails: false);
    setState(() {
      contacts = _contacts;
    });
  }

  Future searchfilder() async {
    List<Contact> _contact = [];
    _contact.addAll(contacts);
    if (controllerserch.text.isNotEmpty) {
      _contact.retainWhere((element) {
        String seachtrem = controllerserch.text.toLowerCase();
        String dysplayname = element.displayName!.toLowerCase();
        return dysplayname.contains(seachtrem);
      });
      setState(() {
        searchcontacts = _contact;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getcontact();
    controllerserch.addListener(() {
      searchfilder();
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isserch = controllerserch.text.isNotEmpty;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      child: Appbar(
                        text: 'Trusted Contacts',
                      ),
                    ),
                    selectedcontact.isNotEmpty
                        ? Container(
                            child: CarouselSlider(
                              // ignore: prefer_const_literals_to_create_immutables
                              items: selectedcontact.map((e) {
                                return Padding(
                                  padding:
                                      const EdgeInsets.only(top: 3, bottom: 3),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color:
                                          Color(COLOR.coustomColors('FFFFFF')),
                                      boxShadow: kElevationToShadow[4],
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: 10,
                                        right: 10,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: [
                                                Text(
                                                  '${e.displayName}',
                                                  style: TextStyle(
                                                    color: Color(
                                                      COLOR.coustomColors(
                                                          '#707070'),
                                                    ),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                Checkbox(
                                                  value: checkboxs,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      checkboxs = value!;
                                                    });
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              "${e.phones!.elementAt(0).value}",
                                              style: TextStyle(
                                                color: Color(
                                                  COLOR
                                                      .coustomColors('#707070'),
                                                ),
                                                fontWeight: FontWeight.normal,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                              options: CarouselOptions(
                                height: 79.0,
                                aspectRatio: 16 / 9,
                                enlargeCenterPage: true,
                                enableInfiniteScroll: false,
                                viewportFraction: 0.8,
                              ),
                            ),
                          )
                        : SizedBox(),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 3),
                      child: Text(
                        'You can select up to 5/${selectedcontact.length} contacts.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(
                            COLOR.coustomColors('707070'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      itemCount: isserch == true
                          ? searchcontacts.length
                          : contacts.length,
                      itemBuilder: (BuildContext context, index) {
                        Contact contact = isserch == true
                            ? searchcontacts[index]
                            : contacts[index];

                        // ignore: avoid_print

                        return Numberlist(
                          onTab: () {
                            setState(() {
                              if (selectedcontact.length < 5 &&
                                  !selectedcontact.contains(contact)) {
                                selectedcontact.add(contact);
                              } else {
                                selectedcontact.remove(contact);
                              }
                            });
                          },
                          tileColor: selectedcontact.contains(contact)
                              ? Color(COLOR.coustomColors('#00B27A'))
                              : Color(COLOR.coustomColors('#F6F6F6')),
                          name: '${contact.displayName}',
                          number: '${contact.phones!.elementAt(0).value}',
                          namecolor: selectedcontact.contains(contact)
                              ? Colors.white
                              : Colors.black,
                          numbercolor: selectedcontact.contains(contact)
                              ? Colors.white70
                              : Colors.grey,
                        );
                      }),
                ),
              ),
              Container(
                color: Colors.white,
                height: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, left: 13, right: 13),
                      child: TextFromFields(
                        controller: controllerserch,
                        hintText: 'Search number',
                        prefixIcon: IconButton(
                          onPressed: () {
                            controllerserch.clear();
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.grey,
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    ButtonWidget(
                      padding:
                          const EdgeInsets.only(left: 15, right: 15, bottom: 3),
                      buttonname: 'Continue',
                      onPressed: () {
                        if (selectedcontact.length != 5) {
                          showsnckbers(
                              context,
                              'Please select 5 contact number. Now selected ${selectedcontact.length}',
                              DismissDirection.down);
                        } else if (selectedcontact.length == 5) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Locationpage()));
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
