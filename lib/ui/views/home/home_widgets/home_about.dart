import 'package:flutter/material.dart';

Widget HomeAbout(bool mobile, {double height, double width}) {
  return Stack(
    children: [
      Center(
        child: Material(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: AssetImage('assets/171.jpg'),
              width: mobile?width/1.1: width / 1.2,
              height: mobile?height*3.7/3:height * 3.3 / 3,
              fit: BoxFit.fill,
            )),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Center(
              child: Text(
                'About Us',
                softWrap: true,
                style: TextStyle(
                    fontFamily: 'PathwayGothic',
                    fontSize: mobile?30:40,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(1, 65, 30, 1)),
              ),
            ),
          ),
          Padding(
            padding:
            mobile? EdgeInsets.only(
                top: height / 30, left: width / 10, right: width / 10):
            EdgeInsets.only(left: 220, right: 220, top: 30),
            child: Center(
              child: Text(
                'Shatayu Ayurveda Superspeciality Clinic is an  ayurveda and panchakarma centre.'
                    'Serving ayurvedic medicinal and panchakrma treatement for more than 15 years.',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Baloo',
                    fontSize: mobile?18:20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: mobile? EdgeInsets.only(top: height / 18):EdgeInsets.only(top: height / 15),
            child: Center(
              child: Text(
                'Ayurveda - Treat the root cause',
                softWrap: true,
                style: TextStyle(
                    fontFamily: 'PathwayGothic',
                    fontSize: mobile?30:40,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(1, 65, 30, 1)),
              ),
            ),
          ),
          Padding(
            padding: mobile?EdgeInsets.only(
                left: width / 10, right: width / 10, top: height / 30):
            EdgeInsets.only(left: 220, right: 220, top: 25),
            child: Center(
              child: Text(
                'For health and beauty, the world has seen the ill effects of chemicals and medicines. Today man is coming back to nature. '
                    'Ayurveda is India\'s 5000 year old medical practice,which makes life healthy and balanced. '
                    'It is not only medical practice, it is the science of life, which teaches us how to live life.',
                softWrap: true,
                style: TextStyle(
                    fontFamily: 'Baloo',
                    fontSize: mobile?17:20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:mobile?height/18: height / 15),
            child: Center(
              child: Text(' Purification, Servicing & Oiling',
                  style: TextStyle(
                      fontFamily: 'PathwayGothic',
                      fontSize: mobile?30:40,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(1, 65, 30, 1))),
            ),
          ),
          Center(
              child: Text('Authentic Panchakarma therapy',
                  style: TextStyle(
                      fontFamily: 'PathwayGothic',
                      fontSize: mobile?25:35,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(1, 65, 30, 1)))),
          Padding(
            padding: mobile? EdgeInsets.only(
                left: width / 10, right: width / 10, top: height / 30):
            EdgeInsets.only(left: 220, right: 220, top: 25),
            child: Center(
              child: Text(
                    'Our body is a machine, which requires  regular Oiling'
                    ' and servicing for proper it\'s functioning. This work can only be fulfilled by Panchakarma, '
                    ' thereby boosting Our Immune System'
                    ' and thus the reducing the chance of potential diseases affecting us',
                softWrap: true,
                style: TextStyle(
                    fontFamily: 'Baloo',
                    fontSize: mobile?17:20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      )
    ],
  );


}