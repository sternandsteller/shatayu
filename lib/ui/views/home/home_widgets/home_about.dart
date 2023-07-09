import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shatayu/ui/views/home/home_widgets/cir.dart';

class HomeAbout extends StatelessWidget {
  final bool mobile;
  final double height;
  final double width;

  HomeAbout(bool this.mobile, {required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        carouselSlider(),
        Stack(
          children: [
            Center(
              child: Material(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: AssetImage('assets/171.jpg'),
                    width: mobile ? width / 1.1 : width / 1.2,
                    height: mobile ? height * 5 / 3 : height * 4 / 3,
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
                          fontSize: mobile ? 30 : 40,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(1, 65, 30, 1)),
                    ),
                  ),
                ),
                Padding(
                  padding: mobile
                      ? EdgeInsets.only(
                          top: height / 40, left: width / 10, right: width / 10)
                      : EdgeInsets.only(left: 220, right: 220, top: 30),
                  child: Text(
                    'Movement as a Service N Apps (MaasSapps)',
                    softWrap: true,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'GreatVibes',
                        fontSize: mobile ? 28 : 32,
                        fontWeight: FontWeight.w900,
                        color: Colors.red),
                  ),
                ),
                Padding(
                  padding: mobile
                      ? EdgeInsets.only(
                          top: height / 40, left: width / 10, right: width / 10)
                      : EdgeInsets.only(left: 220, right: 220, top: 30),
                  child: Center(
                    child: Text(
                      'Shatayu Ayurveda Superspeciality Clinic is an Ayurved and Panchakarma centre.'
                      'Serving Ayurvedic medicinal and Panchakrma treatment for more than 15 years.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Baloo',
                          fontSize: mobile ? 18 : 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: mobile
                      ? EdgeInsets.only(
                          top: height / 40, left: width / 10, right: width / 10)
                      : EdgeInsets.only(left: 220, right: 220, top: 30),
                  child: Text(
                    '✣ ✣ Relax '
                    '\n'
                    '✣ Detox'
                    '\n'
                    '✣ Rejuvenate'
                    '\n'
                    '✣ Immunity Booster',
                    softWrap: true,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Baloo',
                        fontSize: mobile ? 18 : 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: mobile
                      ? EdgeInsets.only(top: height / 18)
                      : EdgeInsets.only(top: height / 15),
                  child: Center(
                    child: Text(
                      'Ayurveda - Treat the root cause',
                      softWrap: true,
                      style: TextStyle(
                          fontFamily: 'PathwayGothic',
                          fontSize: mobile ? 30 : 40,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(1, 65, 30, 1)),
                    ),
                  ),
                ),
                Padding(
                  padding: mobile
                      ? EdgeInsets.only(
                          left: width / 10, right: width / 10, top: height / 30)
                      : EdgeInsets.only(left: 220, right: 220, top: 25),
                  child: Center(
                    child: Text(
                      'For health and beauty, the world has seen the ill effects of chemicals and medicines. Today man is coming back to nature. '
                      'Ayurved is India\'s 5000 year old traditional practice,which makes life healthy and balanced. '
                      'It is not only a treatment, it is the science of life, which teaches us how to live a healthy life.',
                      softWrap: true,
                      style: TextStyle(
                          fontFamily: 'Baloo',
                          fontSize: mobile ? 17 : 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: mobile ? height / 18 : height / 15),
                  child: Center(
                    child: Text(' Purification, Servicing & Oiling',
                        style: TextStyle(
                            fontFamily: 'PathwayGothic',
                            fontSize: mobile ? 30 : 40,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(1, 65, 30, 1))),
                  ),
                ),
                Center(
                    child: Text('Authentic Panchakarma therapy',
                        style: TextStyle(
                            fontFamily: 'PathwayGothic',
                            fontSize: mobile ? 25 : 35,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(1, 65, 30, 1)))),
                Padding(
                  padding: mobile
                      ? EdgeInsets.only(
                          left: width / 10, right: width / 10, top: height / 30)
                      : EdgeInsets.only(left: 220, right: 220, top: 25),
                  child: Center(
                    child: Text(
                      'Our body is a machine, which requires  regular Oiling'
                      ' and Servicing for proper functioning. This work can only be fulfilled by Panchakarma, '
                      ' boosting Our immune system.',
                      softWrap: true,
                      style: TextStyle(
                          fontFamily: 'Baloo',
                          fontSize: mobile ? 17 : 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  CarouselSlider carouselSlider() {
    return CarouselSlider(
        items: buildCarasoulList(60),
        options: CarouselOptions(
          height: 200 / 4,
          aspectRatio: 16 / 9,
          viewportFraction: .35,
          initialPage: 0,
          enableInfiniteScroll: true,
          pauseAutoPlayOnTouch: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 10),
          autoPlayAnimationDuration: Duration(milliseconds: 80),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: false,
          scrollDirection: Axis.horizontal,
        ));
  }
}
