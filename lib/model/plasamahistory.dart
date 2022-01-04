class PlasamaHistory {
  String? image;
  String? name;
  String? hospitalname;
  String? location;
  String? bloodgroup;
  String? date;

  PlasamaHistory(
      {this.image,
      this.hospitalname,
      this.bloodgroup,
      this.location,
      this.name,
      this.date});
}

List<PlasamaHistory> plasamahistory = [
  PlasamaHistory(
    image: 'https://jooinn.com/images/human-21.jpg',
    name: 'William',
    hospitalname: 'Health and Hope Ltd.',
    bloodgroup: 'O+',
    date: '7-5-2019',
    location: 'House # 11, Road # 2A, Block # J, Baridhara, Dhaka-1212.',
  ),
  PlasamaHistory(
    image: 'https://jooinn.com/images/human-21.jpg',
    name: 'Anthony Mark',
    hospitalname: 'Hervest Infertility Care Ltd.',
    bloodgroup: 'A+',
    date: '5-9-2021',
    location:
        '	152/1-H Green Road, Panthapath (Panthapath Crossing), Dhaka-1205',
  ),
  PlasamaHistory(
    image: 'https://jooinn.com/images/human-21.jpg',
    name: 'Henry',
    hospitalname: 'Infectious Diseases Hospital, Dhaka',
    bloodgroup: 'O-',
    date: '3-8-2021',
    location:
        '152/1-H,Green Road,Panthapath (Green Road-Panthapath crossing),Dhaka-1205',
  ),
  PlasamaHistory(
    image: 'https://jooinn.com/images/human-21.jpg',
    name: 'Alexander',
    hospitalname: 'Health and Hope Ltd.',
    bloodgroup: 'O+',
    date: '7-5-2019',
    location: 'House # 11, Road # 2A, Block # J, Baridhara, Dhaka-1212.',
  ),
];
