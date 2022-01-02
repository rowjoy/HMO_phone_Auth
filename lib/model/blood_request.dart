class Bloodrequest {
  String? name;
  String? distance;
  String? bloodgrop;
  String? hospitelname;
  String? location;
  String? date;
  String? image;
  String? time;

  Bloodrequest({
    this.name,
    this.distance,
    this.bloodgrop,
    this.hospitelname,
    this.location,
    this.date,
    this.image,
    this.time,
  });
}

List<Bloodrequest> bloodrequest = [
  Bloodrequest(
      name: 'James',
      distance: '1.2',
      hospitelname: 'Ad-Din Hospital',
      bloodgrop: 'A+',
      location: '	Moghbazar, Dhaka',
      image:
          'https://cdn.business2community.com/wp-content/uploads/2014/04/profile-picture-300x300.jpg',
      date: '02-25-2022',
      time: '1'),
  Bloodrequest(
      name: 'Sayeda Sayed',
      distance: '12.2',
      hospitelname: 'Ahmad Medical Center',
      bloodgrop: 'O+',
      location: '71/1 R-15/A Dhanmondi Sat Mosjid Road Dhaka',
      image:
          'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg',
      date: '02-15-2022',
      time: '2'),
  Bloodrequest(
    name: 'Muhaiminul',
    distance: '5.2',
    hospitelname: 'Aichi Hospital',
    bloodgrop: 'B+',
    location: 'House: 13, Eshakha Avenue Sector: 6, utttara Dhaka',
    image:
        'https://mobirise.com/bootstrap-template/profile-template/assets/images/timothy-paul-smith-256424-1200x800.jpg',
    date: '02-18-2022',
    time: '1',
  ),
  Bloodrequest(
    name: 'voodoo doll',
    distance: '3.5',
    hospitelname: 'Al Noor Eye Hospital',
    bloodgrop: 'AB+',
    location: '1/9 E, Lalmatia, Satmosjid Road, Dhaka',
    image: 'https://miro.medium.com/max/1400/0*0fClPmIScV5pTLoE.jpg',
    date: '01-10-2022',
    time: '2',
  ),
  Bloodrequest(
    name: '	Sadia iqbal',
    distance: '8.2',
    hospitelname: 'Al-Ahsraf General Hospital',
    bloodgrop: 'O-',
    location: 'House: 12 Road: 21,Sector: 4,Uttara Dhaka',
    image:
        'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/profile-photos-4.jpg',
    date: '03-12-2022',
    time: '2',
  ),
];
