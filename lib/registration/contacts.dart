// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hmo/registration/contactmodel.dart';

import 'package:hmo/registration/location.dart';
import 'package:hmo/registration/numberlist.dart';
import 'package:hmo/utils/colors.dart';
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
  List<ContactModel> selectedcontact = [];
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
                    selecednumber == true
                        ? Container(
                            child: CarouselSlider(
                              // ignore: prefer_const_literals_to_create_immutables
                              items: selectedcontact.map((e) {
                                return Container(
                                  margin: EdgeInsets.only(top: 6, bottom: 6),
                                  decoration: BoxDecoration(
                                    color: Color(COLOR.coustomColors('FFFFFF')),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade100,
                                        spreadRadius: 5,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
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
                                                MainAxisAlignment.spaceBetween,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: [
                                              Text(
                                                '${e.name}',
                                                style: TextStyle(
                                                  color: Color(
                                                    COLOR.coustomColors(
                                                        '#707070'),
                                                  ),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
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
                                            "${e.number}",
                                            style: TextStyle(
                                              color: Color(
                                                COLOR.coustomColors('#707070'),
                                              ),
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                              options: CarouselOptions(
                                height: 92.0,
                                aspectRatio: 16 / 9,
                                enlargeCenterPage: true,
                                enableInfiniteScroll: true,
                                viewportFraction: 0.8,
                              ),
                            ),
                          )
                        : SizedBox(),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 3),
                      child: Text(
                        'You can select up to 5 contacts',
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
                        return Numberlist(
                          selected: index == selectedIndex,
                          onLongPress: () {
                            setState(() {
                              if (selecednumber = true) {
                                selectedIndex = index;
                                selectedcontact.add(ContactModel(
                                    contact.displayName,
                                    contact.phones!.elementAt(0).value));
                              } else {
                                selectedcontact.removeAt(0);
                              }
                            });
                          },
                          onTab: () {},
                          name: '${contact.displayName}',
                          number: '${contact.phones!.elementAt(0).value}',
                          namecolor: selectedIndex == index
                              ? Colors.white
                              : Color(
                                  COLOR.coustomColors('707070'),
                                ),
                          numbercolor: selectedIndex == index
                              ? Colors.white
                              : Color(
                                  COLOR.coustomColors('747474'),
                                ),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Locationpage()));
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
