import 'package:flutter/material.dart';

class MobileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    double height = media.size.height;
    double width = media.size.width;
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/light-green-background-wallpaper-3.jpg'),
          fit: BoxFit.fill,
          height: height / 3.2,
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
            height: 100,
            width: 75,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height / 16, left: width / 5.8),
          child: Text(
            'MaasApps',
            style: TextStyle(
                fontFamily: 'GreatVibes',
                fontWeight: FontWeight.w800,
                color: Colors.red,
                fontSize: 22),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: width / 4, top: height / 12),
          child: Text(
            'Movement'
            '\n'
            'As a Service'
            '\n'
            'And Apps',
            style: TextStyle(
              fontFamily: 'Oswald',
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: //Colors.white
                  Color.fromRGBO(150, 5, 51, 1),
            ),
          ),
        ),
      ],
    );
  }
}
