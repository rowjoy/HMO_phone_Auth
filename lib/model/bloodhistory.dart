class BloodHistory {
  String? image;
  String? name;
  String? hospitalname;
  String? location;
  String? bloodgroup;
  String? date;

  BloodHistory(
      {this.image,
      this.hospitalname,
      this.bloodgroup,
      this.location,
      this.name,
      this.date});
}

List<BloodHistory> bloodhistorys = [
  BloodHistory(
    image: 'https://jooinn.com/images/human-21.jpg',
    name: 'Christopher',
    hospitalname: 'Health and Hope Ltd.',
    bloodgroup: 'O+',
    date: '7-5-2019',
    location: 'House # 11, Road # 2A, Block # J, Baridhara, Dhaka-1212.',
  ),
  BloodHistory(
    image: 'https://jooinn.com/images/human-21.jpg',
    name: 'Anthony',
    hospitalname: 'Hervest Infertility Care Ltd.',
    bloodgroup: 'A+',
    date: '5-9-2021',
    location:
        '152/1-H Green Road, Panthapath (Panthapath Crossing), Dhaka-1205',
  ),
  BloodHistory(
    image: 'https://jooinn.com/images/human-21.jpg',
    name: 'Matthew',
    hospitalname: 'Infectious Diseases Hospital, Dhaka',
    bloodgroup: 'O-',
    date: '3-8-2021',
    location:
        '152/1-H,Green Road,Panthapath (Green Road-Panthapath crossing),Dhaka-1205',
  ),
  BloodHistory(
    image: 'https://jooinn.com/images/human-21.jpg',
    name: 'Daniel',
    hospitalname:
        'Institute of Child Health Shishu Sasthya Foundation Hospital',
    bloodgroup: 'AB+',
    date: '2-5-2021',
    location: '6/2, Borobag, Mirpur, Dhaka-1216',
  ),
];
