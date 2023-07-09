import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final double width;
  final double height;

  const TopBar({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(46, 139, 87, 1),
      height: height / 17,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: width / 20),
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '5501 Chapter hill, Geneva, IL 60343',
            style: TextStyle(
                fontFamily: 'Baloo', color: Colors.white, fontSize: 18),
          ),
          SizedBox(width: width / 40),
          Container(
            width: 0.2,
            color: Colors.white,
            height: 20,
          ),
          SizedBox(width: width / 40),
          Icon(Icons.call, color: Colors.white),
          SizedBox(width: 10),
          Text(
            '+1-222-243-1115',
            style: TextStyle(
                fontFamily: 'Baloo', color: Colors.white, fontSize: 18),
          )
        ],
      ),
    );
  }
}
