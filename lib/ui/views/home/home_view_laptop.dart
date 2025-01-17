import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:shatayu/ui/views/home/home_widgets/cir.dart';

import 'package:shatayu/widgets/nav_bar.dart';
import 'package:shatayu/widgets/top_bar.dart';

import 'home_widgets/bottom_home.dart';
import 'home_widgets/home_about.dart';

class HomeViewLaptop extends StatelessWidget {
  final String number = "+122424134535";
  final String email = "sternandasdfs@gmail.com";

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

// Build
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(height / 17),
          child: TopBar(height: height, width: width)),
      body: Scrollbar(
          thumbVisibility: false,
          child: ListView(children: [
            Stack(
              children: [
                Image(
                  image: AssetImage(
                      'assets/light-green-background-wallpaper-3.jpg'),
                  fit: BoxFit.fill,
                  height: height / 2,
                  width: width,
                ),
                Image(
                  image: AssetImage('assets/green_2.png'),
                  fit: BoxFit.fill,
                  width: width,
                  height: height / 2,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, top: height / 6),
                  child: Image(
                    image: AssetImage('assets/shatayu.png'),
                    height: 100,
                    width: 100,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: height / 7, left: width / 10),
                  child: Text(
                    'Dr. Madhavi\'s',
                    style: TextStyle(
                        fontFamily: 'GreatVibes',
                        fontWeight: FontWeight.w800,
                        color: Colors.red,
                        fontSize: 30),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: width / 10, top: height / 6),
                  child: Text(
                    'Shatayu Ayurveda Panchakarma'
                    '\n'
                    'LAPuper Speciality Clinic',
                    style: TextStyle(
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w600,
                      fontSize: 50,
                      color: //Colors.white
                          Color.fromRGBO(1, 60, 30, 1),
                    ),
                  ),
                ),
                NavBar(height: height, width: width),
/*
*/
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
                items: buildCarasoulList(100),
                options: CarouselOptions(
                  height: height / 2,
                  aspectRatio: 16 / 9,
                  viewportFraction: .2,
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
            SizedBox(
              height: height / 7.5,
            ),
            HomeAbout(false, height: height, width: width),
            SizedBox(
              height: height / 7,
            ),
            BottomHome(false, height: height, width: width)
          ])),
    );
  }
}
