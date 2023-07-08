import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class StickyNavBar extends StatelessWidget {
  final Function(int) onTap;
  final int index;

  const StickyNavBar({required this.onTap, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 75.0,
      backgroundColor: Color.fromRGBO(187, 255, 168, 1),
      //color: Colors.white70,
      //buttonBackgroundColor: Color.fromRGBO(0,117,78,1),
      onTap: onTap,
      index: index,
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
          Icons.media_bluetooth_off_outlined,
          color: Color.fromRGBO(1, 60, 30, 1),
        ),
        Icon(
          Icons.portrait,
          color: Color.fromRGBO(1, 60, 30, 1),
        )
      ],
    );
  }
}
