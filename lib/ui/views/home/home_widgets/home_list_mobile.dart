import 'package:flutter/material.dart';

List<Widget> HomeListMobile = [
ListView(children: [
Stack(
children: [
Image(
image:
AssetImage('assets/light-green-background-wallpaper-3.jpg'),
fit: BoxFit.fill,
height: height / 3.3,
width: width,
),
Image(
image: AssetImage('assets/green_2.png'),
fit: BoxFit.fill,
width: width,
height: height / 4,
),
Padding(
padding: EdgeInsets.only(left: 10, top: height / 12),
child: Image(
image: AssetImage('assets/shatayu.png'),
height: 45,
width: 45,
),
),
Padding(
padding: EdgeInsets.only(top: height / 16, left: width / 5.8),
child: Text(
'Dr. Madhavi\'s',
style: TextStyle(
fontFamily: 'GreatVibes',
fontWeight: FontWeight.w800,
color: Colors.red,
fontSize: 22),
),
),
Padding(
padding: EdgeInsets.only(left: width / 5.8, top: height / 12),
child: Text(
'Shatayu Ayurveda Panchakarma'
'\n'
'Super Speciality Clinic',
style: TextStyle(
fontFamily: 'Oswald',
fontWeight: FontWeight.w600,
fontSize: 28,
color: //Colors.white
Color.fromRGBO(1, 60, 30, 1),
),
),
),
Padding(
padding: EdgeInsets.only(left: width / 5.7, top: height / 3.9),
child: Text(
'Serving since 15 years..',
style: TextStyle(
fontFamily: 'GreatVibes',
color: Color.fromRGBO(46, 139, 87, 1),
fontSize: 22,
fontWeight: FontWeight.w500),
),
),
],
),
CurvedNavigationBar(
height: 45,
backgroundColor: Color.fromRGBO(187, 255, 168, 1),
//buttonBackgroundColor: Color.fromRGBO(0,117,78,1),
items: [
Icon(
Icons.home,
color: Color.fromRGBO(1, 60, 30, 1),
),
Icon(
Icons.local_hospital,
color: Color.fromRGBO(1, 60, 30, 1),
),
Icon(
Ionicons.ios_leaf,
color: Color.fromRGBO(1, 60, 30, 1),
),
Icon(
Icons.portrait,
color: Color.fromRGBO(1, 60, 30, 1),
)
],
),
CarouselSlider(
items: buildCarasoulList(50),
options: CarouselOptions(
height: height / 4,
aspectRatio: 16 / 9,
viewportFraction: .35,
initialPage: 0,
enableInfiniteScroll: true,
pauseAutoPlayOnTouch: true,
reverse: false,
autoPlay: true,
autoPlayInterval: Duration(seconds: 10),
autoPlayAnimationDuration: Duration(milliseconds: 800),
autoPlayCurve: Curves.fastOutSlowIn,
enlargeCenterPage: false,
scrollDirection: Axis.horizontal,
)),
HomeAbout(true, height: height, width: width),
SizedBox(
height: height / 20,
),
BottomHome(true, height: height, width: width),

//Diseases Page
TreatementMobile(width: width, height: height),

//Panchakarma Page
PanchakarmaMobile(width: width, height: height),

//Contact Us/Reach Us Page
ContactUsMobile(width: width, height: height)
]

];