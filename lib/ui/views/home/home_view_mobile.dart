/* Contains the widget that will be used for Mobile widget of home,
portrait and landscape
 */
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:shatayu/constants/routes.dart';
import 'package:shatayu/ui/views/contact_us/contact_us_mobile.dart';
import 'package:shatayu/ui/views/home/home_widgets/cir.dart';
import 'package:shatayu/ui/views/panchakarma/panchakarma_mobile.dart';
import 'package:shatayu/ui/views/treatement/treatement_mobile.dart';
import 'package:shatayu/widgets/mobile_header.dart';
import 'package:shatayu/widgets/sticky_nav_bar.dart';
import 'home_widgets/bottom_home.dart';
import 'home_widgets/home_about.dart';
import '../../../enums/menu_action.dart';

class HomeMobilePortrait extends StatefulWidget {
  @override
  _HomeMobilePortraitState createState() => _HomeMobilePortraitState();
}

class _HomeMobilePortraitState extends State<HomeMobilePortrait> {
  int bodyIndex = 0;

  void _setBodyIndex(int inBodyIndex) {
    setState(() {
      bodyIndex = inBodyIndex;
      debugPrint(
        "bodyIndex=$bodyIndex, inBodyIndex=$inBodyIndex",
      );
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    double height = media.size.height;
    double width = media.size.width;
    List<Widget> _widgetOptions = <Widget>[
      TreatementMobile(height: height, width: width),
      ContactUsMobile(height: height, width: width),
      PanchakarmaMobile(height: height, width: width),
      HomeAbout(true, height: height, width: width),
    ];
    debugPrint('bi=$bodyIndex');
    return SafeArea(
      child: Scaffold(
        appBar: _AppBar(context: context),
        bottomNavigationBar: _BottomNavigationBar(),
        body: Scrollbar(
          child: Stack(
            children: [
              ScrollablePositionedList.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return _widgetOptions[bodyIndex];
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _BottomNavigationBar() {
    return BottomNavigationBar(
        backgroundColor: Colors.amber[300],
        selectedItemColor: Colors.orange[800],
        currentIndex: 1,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.login_sharp),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.app_registration_outlined),
            label: 'Register',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notes_sharp),
            label: 'Your Notes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label: 'Share',
          ),
        ]);
  }

  AppBar _AppBar({required BuildContext context}) {
    return AppBar(
      backgroundColor: Colors.amber[300],
      title: Column(
        children: [
          _BackgroundRow(context: context),
          _ForgroundRow(context: context)
        ],
      ),
    );
  }

  Row _BackgroundRow({required BuildContext context}) {
    return Row(
      children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.create_sharp),
        ),
        IconButton(
          onPressed: () async {},
          icon: const Icon(Icons.share),
        ),
        Text('Movement As A Service'),
      ],
    );
  }

  Row _ForgroundRow({required BuildContext context}) {
    return Row(
      children: [
        IconButton(
          onPressed: () async {
            _setBodyIndex(1);
          },
          icon: const Icon(Icons.euro),
        ),
        IconButton(
          onPressed: () async {
            _setBodyIndex(2);
          },
          icon: const Icon(Icons.badge),
        ),
        IconButton(
          onPressed: () async {
            _setBodyIndex(3);
          },
          icon: const Icon(Icons.accessible),
        ),
      ],
    );
  }
}
